cask "securid" do
  version "4.2.3"
  sha256 "025a8be90e972003809f5ae41aa590f8800d51d66b3a3a3f504e0e56f864acb8"

  url "https://community.rsa.com/yfcdo34327/attachments/yfcdo34327/securid-software-token-macos/9/1/RSASecurIDMac#{version.no_dots}.dmg.zip"
  name "RSA SecurID"
  desc "Authentication software"
  homepage "https://community.rsa.com/t5/securid-software-token-for-macos/tkb-p/securid-software-token-macos"

  disable! date: "2024-04-09", because: :no_longer_meets_criteria

  container nested: "RSASecurIDMac#{version.no_dots}.dmg"

  pkg "RSASecurIDTokenAutoMac#{version.no_dots}x64.pkg"

  uninstall pkgutil: "com.rsa.pkg.securidsoftwaretoken"
end
