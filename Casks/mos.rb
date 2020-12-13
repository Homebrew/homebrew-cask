cask "mos" do
  version "3.1.0"
  sha256 "8be71fb09749634603ed8c076d852a14ec39146bda9faae08c8d50eece5a5b4b"

  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Versions.#{version}.dmg",
      verified: "github.com/Caldis/Mos/"
  appcast "https://github.com/Caldis/Mos/releases.atom"
  name "Mos"
  desc "Smooths scrolling and set mouse scroll directions independently"
  homepage "https://mos.caldis.me/"

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end
