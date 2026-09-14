cask "bing-wallpaper" do
  version "2.0.11.231,fd30d7b2-7ce9-4f68-b875-b3dde8061979"
  sha256 "b1b3642a62489c1a20234c451e90111ef0e278d68e616c0a8a01d0adf560e4ea"

  url "https://download.microsoft.com/download/#{version.csv.second}/MW011/#{version.csv.first}/MicrosoftBingWallpaper_#{version.csv.first}.pkg"
  name "Bing Wallpaper"
  name "Microsoft Bing Wallpaper"
  desc "Use the Bing daily image as your wallpaper"
  homepage "https://bingwallpaper.microsoft.com/"

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

  depends_on macos: :sonoma

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
