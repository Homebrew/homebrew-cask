cask "airdroid" do
  version "3.6.9.2"
  sha256 "7fa7bca24d69e9f9951fe6887a8c73ea3db97ad17d7a9003ed67e4070e7371fe"

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
