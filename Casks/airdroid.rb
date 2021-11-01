cask "airdroid" do
  version "3.7.0.0"
  sha256 "3c7486b7823e3570e166e704b60c70c5bc90a9f0861c64edb46011b9ecc871c2"

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
