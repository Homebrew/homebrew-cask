cask "cozy-drive" do
  version "3.36.1"
  sha256 "c59213d465b9a03a1bc66f392343c980703a9dc1c8d945afc582f1b30994e5b8"

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
