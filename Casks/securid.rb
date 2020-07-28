cask "securid" do
  version "4.2.1"
  sha256 "e3d796f263cbdbc4a6c870931e469c64e8c8ffb14aa8ae68b4036cee0eeb0c04"

  url "https://community.rsa.com/servlet/JiveServlet/download/62004-9-60039/RSASecurIDMac#{version.no_dots}.dmg.zip"
  name "RSA SecurID"
  homepage "https://www.rsa.com/en-us/products/rsa-securid-suite/rsa-securid-access/securid-software-tokens.html"

  pkg "RSASecurIDTokenAutoMac#{version.no_dots}x64.pkg"

  uninstall pkgutil: "com.rsa.pkg.securidsoftwaretoken"
end
