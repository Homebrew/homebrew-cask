cask "airdroid" do
  version "3.7.1.0"
  sha256 "c0a92cc080546e06a737b5bb43e866534f91a961f4c37a712aa48f09c01446d0"

  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg",
      verified: "s3.amazonaws.com/dl.airdroid.com/"
  name "AirDroid"
  desc "Mobile device management suite"
  homepage "https://www.airdroid.com/"

  livecheck do
    url "https://srv3.airdroid.com/p20/web/getbinaryredirect?type=dmg&channel=&version="
    strategy :header_match
  end

  app "AirDroid.app"
end
