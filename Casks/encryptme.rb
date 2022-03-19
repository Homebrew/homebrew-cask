cask "encryptme" do
  version "4.3.0,52218"
  sha256 "5450d69384d6f18fb61166938442301aa6e98eb51d049d9f21958da429b80797"

  url "https://static.encrypt.me/downloads/osx/updates/Release/EncryptMe-#{version.csv.first}.dmg"
  name "EncryptMe"
  name "Cloak"
  desc "VPN and encryption software"
  homepage "https://encrypt.me/"

  livecheck do
    url "https://www.getcloak.com/updates/osx/public/"
    strategy :sparkle
  end

  auto_updates true

  app "EncryptMe.app"
end
