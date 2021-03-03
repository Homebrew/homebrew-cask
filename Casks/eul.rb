cask "eul" do
  version "1.5.13"
  sha256 "3b2a7f3c760cb6de90e47a41a831f171c302cad9476a8d40fd15afc66eb76c55"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  appcast "https://github.com/gao-sun/eul/releases.atom"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  depends_on macos: ">= :catalina"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
