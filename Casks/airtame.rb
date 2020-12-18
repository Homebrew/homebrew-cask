cask "airtame" do
  version "4.1.1"
  sha256 "44ae3bbfe967e086ccc7d37247b3e549ee7d1c7866f01caeec9a4713f0389b4b"

  url "https://downloads-cdn.airtame.com/app/latest/mac/Airtame-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads-website.airtame.com/get.php?platform=mac"
  name "Airtame"
  desc "Wireless screen sharing platform"
  homepage "https://airtame.com/"

  auto_updates true

  app "Airtame.app"
end
