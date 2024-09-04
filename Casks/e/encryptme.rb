cask "encryptme" do
  version "4.4.1"
  sha256 "5fc959899e2c011df822ec55b999ce853d9e7dc56577b2cac759286fb89220e4"

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
  depends_on macos: ">= :monterey"

  app "EncryptMe.app"
end
