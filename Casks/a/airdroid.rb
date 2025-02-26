cask "airdroid" do
  version "3.7.3.0"
  sha256 "0f72950ca8cc043e51ceb2132818ec0498418e3bc3681b15429072d23be05382"

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

  caveats do
    requires_rosetta
  end
end
