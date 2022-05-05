cask "airtame" do
  version "4.3.3"
  sha256 "61eb82f9c290ed33597fe65eaea9f856fdcc2bb110c3c1d1b6036e5296bdda0e"

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  name "Airtame"
  desc "Wireless screen sharing platform"
  homepage "https://airtame.com/"

  livecheck do
    url "https://downloads-website.airtame.com/get.php?platform=mac"
    strategy :header_match
  end

  auto_updates true

  app "Airtame.app"
end
