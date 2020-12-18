cask "parallels-client" do
  version "17.1.2-21868"
  sha256 "9a876d7e59f11aa31defa8607f23e6e28e89e8721cd469cbf128a07195761065"

  url "https://download.parallels.com/ras/v#{version.major}/#{version.hyphens_to_dots}/RasClient-Mac-Appstore-#{version}.pkg"
  appcast "https://download.parallels.com/ras/v#{version.major}/RAS%20Client%20for%20Mac%20Changelog.txt"
  name "Parallels Client"
  homepage "https://www.parallels.com/products/ras/features/rdp-client/"

  pkg "RasClient-Mac-Appstore-#{version}.pkg"

  uninstall pkgutil: "com.2X.Client.Mac",
            quit:    "com.2X.Client.Mac"
end
