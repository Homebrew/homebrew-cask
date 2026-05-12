cask "bing-wallpaper" do
  version "1.1.9"
  sha256 "64f63c9f2f9f8c42a441ed3dc630e6d2cdcc0a7287b6ec872ebcfe41b474905e"

  url "https://download.microsoft.com/download/3c2365ad-ed5f-4ebc-bacf-6dd9c66a2d15/Installer/#{version}/var1/MW011/2/BingWallpaper.pkg"
  name "Bing Wallpaper"
  desc "Use the Bing daily image as your wallpaper"
  homepage "https://bingwallpaper.microsoft.com/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2181295&installerType=PKG"
    regex(%r{Installer/(\d+(?:\.\d+)+)[^/]*/}i)
    strategy :header_match
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
