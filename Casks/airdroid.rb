cask "airdroid" do
  version "3.6.9.1"
  sha256 "5537131e9c14032f2e962f00209a0f8c03a21fe0cae0b6cc3e46e1b2d5c79d67"

  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg",
      verified: "s3.amazonaws.com/dl.airdroid.com/"
  name "AirDroid"
  desc "Cross-platform mobile device management suite"
  homepage "https://www.airdroid.com/"

  livecheck do
    url "https://srv3.airdroid.com/p20/web/getbinaryredirect?type=dmg&channel=&version="
    strategy :header_match
  end

  app "AirDroid.app"
end
