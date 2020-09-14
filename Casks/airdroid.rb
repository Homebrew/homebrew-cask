cask "airdroid" do
  version "3.6.8.0"
  sha256 "9f286c4de315a5fd988a54b05b63381c209042930d1400eeb2260a580cd4daae"

  # s3.amazonaws.com/dl.airdroid.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://srv3.airdroid.com/p20/web/getbinaryredirect?type=dmg&channel=&version="
  name "AirDroid"
  desc "Cross-platform mobile device management suite"
  homepage "https://www.airdroid.com/"

  app "AirDroid.app"
end
