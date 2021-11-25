cask "airtame" do
  version "4.3.1"
  sha256 "6a06737e6db266315fb2b0ca922c826fb1e92ddc569f174b7e106fd2efa7895b"

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
