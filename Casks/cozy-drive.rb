cask "cozy-drive" do
  version "3.27.0"
  sha256 "f197b068256c3faf79d369e87eb8145737d12438455d266aaeb0015a1b0dda3d"

  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg",
      verified: "nuts.cozycloud.cc/"
  name "Cozy Drive"
  homepage "https://cozy.io/"

  livecheck do
    url "https://nuts.cozycloud.cc/download/channel/stable/osx"
    strategy :header_match
  end

  app "Cozy Drive.app"
end
