cask "cozy-drive" do
  version "3.28.1"
  sha256 "0da0f3535c8b71c383b0c66dbe78257d7e581fa457e22dc212d6ff5945c01214"

  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg",
      verified: "nuts.cozycloud.cc/"
  name "Cozy Drive"
  desc "File synchronization for Cozy Cloud"
  homepage "https://cozy.io/"

  livecheck do
    url "https://nuts.cozycloud.cc/download/channel/stable/osx"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "Cozy Drive.app"
end
