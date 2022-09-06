cask "airtame" do
  version "4.5.0"
  sha256 "ca714ad17c57e0b3e97cd0ba1b10754a97cf8cdca4595bee325d8261498da7be"

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
