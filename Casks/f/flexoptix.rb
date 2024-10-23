cask "flexoptix" do
  version "5.25.1-latest"
  sha256 "670502f72e3f3f277b04b3d56acec402591b56511f4e7edc2bbc1336c0db1580"

  url "https://flexbox.reconfigure.me/download/electron/mac/x64/FLEXOPTIX%20App-#{version}.dmg",
      verified: "flexbox.reconfigure.me/download/electron/mac/x64/"
  name "FLEXOPTIX App"
  desc "Connect to your FLEXBOX without cables and configure transceivers"
  homepage "https://www.flexoptix.net/en/flexoptix-app/#"

  livecheck do
    url "https://flexbox.reconfigure.me/download/electron/mac/x64/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :el_capitan"

  app "FLEXOPTIX App.app"

  zap trash: [
    "~/Library/Application Support/flexoptix-app",
    "~/Library/Preferences/net.flexoptix.flexoptix.app.plist",
    "~/Library/Saved Application State/net.flexoptix.flexoptix.app.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
