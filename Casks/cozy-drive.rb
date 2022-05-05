cask "cozy-drive" do
  version "3.34.2"
  sha256 "3ca8d4afca71afc00eb4717cd3501394981b7d4f848b55a3e27792106ce63385"

  url "https://github.com/cozy-labs/cozy-desktop/releases/download/v#{version}/Cozy-Drive-#{version}.dmg",
      verified: "github.com/cozy-labs/cozy-desktop"
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
