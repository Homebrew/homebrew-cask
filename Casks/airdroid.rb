cask "airdroid" do
  version "3.7.1.0"
  sha256 "89d772b179104b2937f81168d63589d9b0759f9d85ce50394e8acd76c908fa3d"

  url "https://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name "AirDroid"
  desc "Mobile device management suite"
  homepage "https://www.airdroid.com/"

  livecheck do
    url "https://srv3.airdroid.com/p20/web/getbinaryredirect?type=dmg&channel=&version="
    strategy :header_match
  end

  app "AirDroid.app"
end
