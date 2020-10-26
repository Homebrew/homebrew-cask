cask "eul" do
  version "1.3.2"
  sha256 "2c2d71b9be957b271072066ba6c9f66c6fd674134fa3717061285f2c16ca95a2"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  appcast "https://github.com/gao-sun/eul/releases.atom"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
