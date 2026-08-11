cask "bing-wallpaper" do
  version "1.1.11,fac946bc-73a0-4cba-bee9-fe223d0304e0"
  sha256 "6470d9f89843ed7e04c8f6c14fb323d6d18099d9a2605b4651eca604ae055020"

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
