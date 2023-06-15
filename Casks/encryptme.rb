cask "encryptme" do
  version "4.4.0"
  sha256 "3dda64ebde80fea167184e18647b0a42ff8d190c6119197e58e3883245ebf477"

  url "https://static.encrypt.me/downloads/osx/updates/Release/EncryptMe-#{version}.dmg"
  name "EncryptMe"
  name "Cloak"
  desc "VPN and encryption software"
  homepage "https://encrypt.me/"

  livecheck do
    url "https://www.getcloak.com/updates/osx/public/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "EncryptMe.app"
end
