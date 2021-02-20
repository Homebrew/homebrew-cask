cask "mos" do
  version "3.3.1"
  sha256 "9bbe5c44a4dae57ea6495adce56eb55fb5a7dcf81d8f7b0b6489ddf78f02cc9d"

  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Versions.#{version}.dmg",
      verified: "github.com/Caldis/Mos/"
  appcast "https://github.com/Caldis/Mos/releases.atom"
  name "Mos"
  desc "Smooths scrolling and set mouse scroll directions independently"
  homepage "https://mos.caldis.me/"

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end
