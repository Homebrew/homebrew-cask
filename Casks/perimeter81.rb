cask "perimeter81" do
  # note: "81" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url "https://static.perimeter81.com/apps/osx/Perimeter81.pkg"
  name "Perimeter 81"
  desc "Zero trust network as a service client"
  homepage "https://perimeter81.com/"

  pkg "Perimeter81.pkg"

  uninstall quit:      "com.perimeter81.Perimeter81",
            launchctl: [
              "com.perimeter81.Perimeter81",
              "com.perimeter81.osx.HelperTool",
            ],
            pkgutil:   "com.safervpn.osx.smb"
end
