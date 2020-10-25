cask "eul" do
  version "1.3"
  sha256 "925188a11d240189a5587ab4f5102d56e6ee0c001048a60a919894bc4e472ba1"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  appcast "https://github.com/gao-sun/eul/releases.atom"
  name "eul"
  desc "Status monitoring"
  homepage "https://github.com/gao-sun/eul"

  app "eul.app"

  zap trash: "~/Library/Preferences/com.gaosun.eul.plist"
end
