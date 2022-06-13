cask "airtame" do
  version "4.4.0"
  sha256 "dadc6558eb7f59e206e0f86558333d980dde5ea3af6c38948fdbf9c3ebcf3c3f"

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
