cask "acslogo" do
  version "1.6.0.2"
  sha256 "eb19b91e6320977214da1bcf1bc21bdf33d403bef45f7dbc76f57abc5337cc76"

  url "https://www.alancsmith.co.uk/logo/ACSLogo#{version.no_dots}.dmg",
      user_agent: :fake
  name "ACSLogo"
  desc "Logo interpreter"
  homepage "https://www.alancsmith.co.uk/logo/"

  livecheck do
    url "https://www.alancsmith.co.uk/logo/release.html"
    regex(/Release\s*(\d+(?:\.\d+)*)/i)
  end

  app "ACSLogo/ACSLogo.app"

  zap trash: "~/Library/Preferences/com.acsmith.acslogo.plist"
end
