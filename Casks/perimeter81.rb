cask "perimeter81" do
  version :latest
  sha256 :no_check

  url "https://static.perimeter81.com/apps/osx/Perimeter81.pkg"
  name "Perimeter 81"
  desc "Zero Trust Network as a Service client"
  homepage "https://perimeter81.com/"

  pkg "Perimeter81.pkg"

  uninstall pkgutil: [
    "com.safervpn.osx.smb",
  ]
end
