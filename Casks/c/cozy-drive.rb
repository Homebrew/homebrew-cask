cask "cozy-drive" do
  version "3.42.0"
  sha256 "f69f9575a842f473d22a3669ff418f729a2ca092c109983ba084dddad1d4648b"

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
