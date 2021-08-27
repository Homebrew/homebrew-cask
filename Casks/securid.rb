cask "securid" do
  version "4.2.2"
  sha256 "178109b820c97dd7ad1f8be907ae0338d2e4ae91cc6ddc4cd0484d9ad6c21198"

  url "https://community.rsa.com/yfcdo34327/attachments/yfcdo34327/securid-software-token-macos/5/1/RSASecurIDMac#{version.no_dots}.dmg.zip"
  name "RSA SecurID"
  homepage "https://community.rsa.com/t5/rsa-securid-software-token-for/tkb-p/securid-software-token-macos"

  container nested: "RSASecurIDMac#{version.no_dots}.dmg"

  pkg "RSASecurIDTokenAutoMac#{version.no_dots}x64.pkg"

  uninstall pkgutil: "com.rsa.pkg.securidsoftwaretoken"
end
