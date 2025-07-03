cask "cozy-drive" do
  version "3.43.0"
  sha256 "6512f3e479819815dd31aff380092286cdebac66a0e1dd01fff1ffc85c05a697"

  url "https://github.com/cozy-labs/cozy-desktop/releases/download/v#{version}/Cozy-Drive-#{version}.dmg",
      verified: "github.com/cozy-labs/cozy-desktop/"
  name "Cozy Drive"
  desc "File synchronisation for Cozy Cloud"
  homepage "https://cozy.io/"

  livecheck do
    url "https://nuts.cozycloud.cc/download/channel/stable/osx"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

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
