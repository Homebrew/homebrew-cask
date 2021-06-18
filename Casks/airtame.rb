cask "airtame" do
  version "4.2.0"
  sha256 "35ec7ea96cd9ba6337e7cbd084418b96db640e875079e74df8c9c54902b8051a"

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
