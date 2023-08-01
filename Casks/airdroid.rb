cask "airdroid" do
  version "3.7.1.1"
  sha256 "2d0966d2011aa4dea62279bf6993cdec79d3a726a58a0c93f96d0f07d5f161fc"

  url "https://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name "AirDroid"
  desc "Mobile device management suite"
  homepage "https://www.airdroid.com/"

  livecheck do
    url "https://srv3.airdroid.com/p20/web/getbinaryredirect?type=dmg&channel=&version="
    strategy :header_match
  end

  app "AirDroid.app"

  zap trash: [
    "~/Library/Application Support/AirDroid",
    "~/Library/Caches/com.sandstudio.airdroid",
    "~/Library/HTTPStorages/com.sandstudio.airdroid",
    "~/Library/Saved Application State/com.sandstudio.airdroid.savedState",
    "~/Library/WebKit/Databases/___IndexedDB/com.sandstudio.airdroid",
  ]
end
