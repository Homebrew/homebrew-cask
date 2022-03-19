cask "airtame" do
  version "4.3.2"
  sha256 "55790e83f3d301112fd95bd9f5c00f8922ef83ed41f43df1c1177bfc74cd63db"

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
