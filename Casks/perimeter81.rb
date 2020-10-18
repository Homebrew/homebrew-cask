# typed: false
cask "perimeter81" do
  version :latest
  sha256 :no_check

  url "https://static.perimeter81.com/apps/osx/Perimeter81.pkg"
  name "Perimeter 81"
  desc "Zero Trust Network as a Service client"
  homepage "https://perimeter81.com/"

  pkg "Perimeter81.pkg"

  uninstall pkgutil:   "com.safervpn.osx.smb",
            launchctl: [
              "com.perimeter81.Perimeter81",
              "com.perimeter81.osx.HelperTool",
            ],
            quit:      "com.safervpn.osx.smb"
end
