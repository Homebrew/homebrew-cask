cask "cozy-drive" do
  version "3.32.0"
  sha256 "fa07f04042222d4a8aa121a7ed4306384569c8ca812e2c83b00148d134af1fca"

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
