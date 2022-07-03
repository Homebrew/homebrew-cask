cask "bing-wallpaper" do
  version "1.0.9"
  sha256 "b55b4d4533ed53f8d3e27229f8d414aa2a780f6fb2354e384dc6be0237c9c14b"

  url "https://download.microsoft.com/download/9/1/1/911276db-dcd3-4129-9639-375613697b11/Mac/Installer/#{version}/Bing/Flight1/MW011/Defaults/Bing%20Wallpaper.pkg"
  name "Bing Wallpaper"
  desc "Use the Bing daily image as your wallpaper"
  homepage "https://bingwallpaper.microsoft.com/"

  livecheck do
    url "https://testedgewelcomeenglish.azurewebsites.net/BingWallpaperMAC/sparkletestcast.xml"
    strategy :extract_plist
  end

  depends_on macos: ">= :big_sur"

  pkg "Bing Wallpaper.pkg"

  uninstall pkgutil: "com.microsoft.msbwpackage",
            quit:    [
              "com.microsoft.autoupdate2",
              "com.microsoft.msbwdefaults",
            ]
end
