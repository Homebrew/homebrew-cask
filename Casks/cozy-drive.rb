cask "cozy-drive" do
  version "3.30.0"
  sha256 "426a923954b628abe3c56df27867ce9f462be492feb96dd2c8a0b863a2e43a88"

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
