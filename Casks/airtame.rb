cask "airtame" do
  version "4.5.2"
  sha256 "894772acfc30bc3e61b6f8d95e573f7aa7df1c6a8ad7549068c0539381695f6f"

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
