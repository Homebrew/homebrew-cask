cask "bing-wallpaper" do
  version "1.1.10,45e5bd06-b77e-48d7-a4f2-ae06e39dd0b4"
  sha256 "44a0000f1e18a0be1daaa4f1b14eedc2d2e10136a8b8a56eed88b33ce699fbe3"

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
