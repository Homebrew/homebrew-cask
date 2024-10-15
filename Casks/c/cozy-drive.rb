cask "cozy-drive" do
  version "3.40.0"
  sha256 "59c2900d8d8e6696c2a103e39292872ca343f5e0a0b835489560764e2c54294c"

  url "https://github.com/cozy-labs/cozy-desktop/releases/download/v#{version}/Cozy-Drive-#{version}.dmg",
      verified: "github.com/cozy-labs/cozy-desktop/"
  name "Cozy Drive"
  desc "File synchronisation for Cozy Cloud"
  homepage "https://cozy.io/"

  livecheck do
    url "https://nuts.cozycloud.cc/download/channel/stable/osx"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "Cozy Drive.app"

  zap trash: [
    "~/.cozy-desktop",
    "~/Library/Application Support/Cozy Drive",
    "~/Library/Preferences/io.cozy.desktop.plist",
    "~/Library/Saved Application State/io.cozy.desktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
