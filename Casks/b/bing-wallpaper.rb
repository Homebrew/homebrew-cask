cask "bing-wallpaper" do
  on_ventura :or_older do
    version "1.1.12,9f265e2b-e7fa-4a5a-a9ca-4b608ed11c0c"
    sha256 "2db703f5c124afc9ae8b1c6a41da2258c56a8cf45d45cb6f7e4ace1594627cd3"

    url "https://download.microsoft.com/download/#{version.csv.second}/Installer/#{version.csv.first}/var1/MW011/2/BingWallpaper.pkg"

    livecheck do
      url "https://go.microsoft.com/fwlink/?linkid=2181295&installerType=PKG"
      regex(%r{/([\h-]+)/Installer/(\d+(?:\.\d+)+)[^/]*/}i)
      strategy :header_match do |headers, regex|
        match = headers["location"]&.match(regex)
        next unless match

        "#{match[2]},#{match[1]}"
      end
    end

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
  on_sonoma :or_newer do
    version "2.0.13.245,2c0667fa-cb6f-4d52-a1fb-dcc20755516e"
    sha256 "f24d356aa315779b50905ad57c385a3174e33fb62585dd5678876e9bf14e0073"

    url "https://download.microsoft.com/download/#{version.csv.second}/MW011/#{version.csv.first}/MicrosoftBingWallpaper_#{version.csv.first}.pkg"

    livecheck do
      # The download endpoint only redirects to the current installer when the
      # client reports macOS 14 or newer; otherwise it serves the legacy 1.x app.
      url "https://www.bing.com/apps/api/wallpaper/downloadMacPackage?pc=mw011&brand=bing",
          header: "Sec-CH-UA-Platform-Version: \"26.0.0\""
      regex(%r{/([\h-]+)/MW011/v?(\d+(?:\.\d+)+)/MicrosoftBingWallpaper[._-]v?\d+(?:\.\d+)*\.pkg}i)
      strategy :header_match do |headers, regex|
        match = headers["location"]&.match(regex)
        next unless match

        "#{match[2]},#{match[1]}"
      end
    end

    pkg "MicrosoftBingWallpaper_#{version.csv.first}.pkg",
        choices: [
          {
            "choiceIdentifier" => "bing_search", # "Enable Bing search in your browser" (BingWallpaper-dse.pkg)
            "choiceAttribute"  => "selected",
            "attributeSetting" => 0,
          },
        ]

    uninstall launchctl: [
                "com.microsoft.bing.sunfish.updater",
                "Microsoft Bing Wallpaper",
              ],
              quit:      [
                "com.microsoft.bing.wallpaper",
                "com.microsoft.MicrosoftBingSearch",
              ],
              signal:    ["TERM", "com.microsoft.bing.wallpaper"],
              pkgutil:   [
                "com.microsoft.bing.sunfish.updater",
                "com.microsoft.bing.wallpaper.installer",
                "com.microsoft.bing.wallpaper.installer.dse",
              ],
              delete:    [
                "/Applications/Microsoft Bing for Safari.app",
                "/Library/Application Support/Microsoft/Sunfish/Updater/Clients/BingWallpaperApp.plist",
              ]

    zap trash: [
      "/Library/Application Support/Microsoft/BingWallpaper",
      "/Library/Application Support/Microsoft/Sunfish",
      "/Library/Logs/Microsoft/Sunfish",
      "~/Library/Application Support/com.microsoft.bing.wallpaper",
      "~/Library/Caches/com.microsoft.bing.wallpaper",
      "~/Library/LaunchAgents/Microsoft Bing Wallpaper.plist",
      "~/Library/WebKit/com.microsoft.bing.wallpaper",
    ]
  end

  name "Bing Wallpaper"
  name "Microsoft Bing Wallpaper"
  desc "Use the Bing daily image as your wallpaper"
  homepage "https://www.bing.com/apps/wallpaper"

  depends_on :macos
end
