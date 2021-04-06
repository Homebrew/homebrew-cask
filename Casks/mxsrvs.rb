cask "mxsrvs" do
  version "1.2.1"
  sha256 "e53e6bd30866bb5cac5e1dc0b9f483469ee3117707b24f865ed6daaf35ddff23"

  url "https://api.moeclub.org/GoogleDrive/1dAv4vjbNSVgy2cuaICP2QDq-iXex0JJD/MxSrvs_#{version}.dmg",
      verified: "api.moeclub.org/GoogleDrive/"
  name "MxSrvs"
  desc "ANMP (Apache, Nginx, MySQL, PHP) ingintegrated development environment"
  homepage "http://www.xsrvs.com/"

  pkg "MxSrvs-#{version}.pkg"

  uninstall pkgutil: "com.xsrvs.name",
            quit:    "MxSrvs",
            delete:  "/Applications/MxSrvs"

  zap trash: [
    "~/.MxSrvs",
    "~/Library/Application Support/MxSrvs",
    "~/Library/Preferences/com.xsrvs.name.plist",
  ]
end
