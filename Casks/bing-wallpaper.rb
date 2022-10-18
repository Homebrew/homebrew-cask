cask "bing-wallpaper" do
  version "1.1.1,19"
  sha256 "93b23792fea0c8a0e56b045a4104e5d04ec097fbca7182d351f8d6f0a3c953c6"

  url "https://download.microsoft.com/download/9/1/1/911276db-dcd3-4129-9639-375613697b11/Mac/Installer/#{version.csv.first}/Bing/Flight1/MW011/Defaults/Bing%20Wallpaper.pkg"
  name "Bing Wallpaper"
  desc "Use the Bing daily image as your wallpaper"
  homepage "https://bingwallpaper.microsoft.com/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2181295"
    strategy :extract_plist
  end

  depends_on macos: ">= :big_sur"

  pkg "Bing Wallpaper.pkg"

  uninstall pkgutil:   "com.microsoft.msbwpackage",
            quit:      [
              "com.microsoft.autoupdate2",
              "com.microsoft.msbwdefaults",
            ],
            launchctl: [
              "com.microsoft.msbwapp",
              "com.microsoft.msbwupdater",
            ]
end
