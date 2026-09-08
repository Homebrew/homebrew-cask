cask "bing-wallpaper" do
  version "1.1.12,9f265e2b-e7fa-4a5a-a9ca-4b608ed11c0c"
  sha256 "2db703f5c124afc9ae8b1c6a41da2258c56a8cf45d45cb6f7e4ace1594627cd3"

  url "https://download.microsoft.com/download/#{version.csv.second}/Installer/#{version.csv.first}/var1/MW011/2/BingWallpaper.pkg"
  name "Bing Wallpaper"
  desc "Use the Bing daily image as your wallpaper"
  homepage "https://bingwallpaper.microsoft.com/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2181295&installerType=PKG"
    regex(%r{/([\h-]+)/Installer/(\d+(?:\.\d+)+)[^/]*/}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next unless match

      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: :big_sur

  pkg "BingWallpaper.pkg"

  uninstall launchctl: [
              "com.microsoft.msbwapp",
              "com.microsoft.msbwupdater",
            ],
            quit:      [
              "com.microsoft.autoupdate2",
              "com.microsoft.MicrosoftBingSearch",
              "com.microsoft.msbwapp",
              "com.microsoft.msbwdefaults",
            ],
            pkgutil:   "com.microsoft.msbwpackage",
            delete:    "/Applications/Microsoft Bing for Safari.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.msbwdefaults.sfl*",
    "~/Library/Application Support/Microsoft/Bing Wallpaper",
  ]

  caveats do
    requires_rosetta
  end
end
