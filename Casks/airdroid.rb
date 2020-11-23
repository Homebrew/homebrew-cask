cask "airdroid" do
  version "3.6.9.0"
  sha256 "1bb9dca1767de9d5b2b3f4f0d732062879fda96eb1072df75019bd49e1ae5b70"

  # s3.amazonaws.com/dl.airdroid.com/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://srv3.airdroid.com/p20/web/getbinaryredirect?type=dmg&channel=&version="
  name "AirDroid"
  desc "Cross-platform mobile device management suite"
  homepage "https://www.airdroid.com/"

  app "AirDroid.app"
end
