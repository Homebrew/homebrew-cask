cask "mos" do
  version "3.3.1"
  sha256 "718e6652b772ddaa73945d9b5170cade170b5810f12256e84e258997332164bd"

  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Versions.#{version}.dmg",
      verified: "github.com/Caldis/Mos/"
  appcast "https://github.com/Caldis/Mos/releases.atom"
  name "Mos"
  desc "Smooths scrolling and set mouse scroll directions independently"
  homepage "https://mos.caldis.me/"

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end
