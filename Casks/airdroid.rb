cask "airdroid" do
  version "3.6.9.2"
  sha256 "5ed0cb9c480be4fc18ddfc184f92481d4b7c1871446f1ebab36c1dcb84614921"

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
