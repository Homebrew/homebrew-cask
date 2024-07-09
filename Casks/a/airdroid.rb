cask "airdroid" do
  version "3.7.2.0"
  sha256 "b257d3fc6383fe7ba117400295a60f3393d43de89474b1ab679abfec5a57976f"

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
