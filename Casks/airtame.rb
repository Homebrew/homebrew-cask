cask "airtame" do
  version "4.3.0"
  sha256 "e4a8f0c9423a2f8815028afc8ed9d6ed5ad521f44cb6ae5d3c9009680e4bc73c"

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
