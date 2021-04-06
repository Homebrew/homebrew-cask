cask "securid" do
  version "4.2.1"
  sha256 "e3d796f263cbdbc4a6c870931e469c64e8c8ffb14aa8ae68b4036cee0eeb0c04"

  url "https://community.rsa.com/yfcdo34327/attachments/yfcdo34327/securid-software-token-macos/4/1/RSASecurIDMac#{version.no_dots}.dmg.zip"
  name "RSA SecurID"
  homepage "https://community.rsa.com/t5/rsa-securid-software-token-for/tkb-p/securid-software-token-macos"

  pkg "RSASecurIDTokenAutoMac#{version.no_dots}x64.pkg"

  uninstall pkgutil: "com.rsa.pkg.securidsoftwaretoken"
end
