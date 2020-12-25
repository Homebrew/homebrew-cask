cask "airtame" do
  version "4.1.1"
  sha256 "44ae3bbfe967e086ccc7d37247b3e549ee7d1c7866f01caeec9a4713f0389b4b"

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
