cask "bing-wallpaper" do
  version "1.1.3,24"
  sha256 "0c7194da0c12c92c8a4edb8e298ed4e523b3d2db5610cdc43a9255e92f58ebfa"

  url "https://download.microsoft.com/download/9/4/a/94aa841f-5578-4856-8a8c-83ff78eb2d1f/Installer/#{version.csv.first}/MSN/Flight2/MW021/Bing%20Wallpaper.pkg"
  name "Bing Wallpaper"
  desc "Use the Bing daily image as your wallpaper"
  homepage "https://bingwallpaper.microsoft.com/"

  livecheck do
    url "https://go.microsoft.com/fwlink/?linkid=2181295"
    strategy :extract_plist
  end

  depends_on macos: ">= :big_sur"

  pkg "Bing Wallpaper.pkg"

  uninstall launchctl: [
              "com.microsoft.msbwapp",
              "com.microsoft.msbwupdater",
            ],
            quit:      [
              "com.microsoft.autoupdate2",
              "com.microsoft.msbwdefaults",
            ],
            pkgutil:   "com.microsoft.msbwpackage"
end
