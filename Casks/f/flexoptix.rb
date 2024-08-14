cask "flexoptix" do
  version "5.24.0-latest"
  sha256 "613750c79eafe22a3cbd4b84a402bdb64f89fbab20d832e6e4041ccc17ccfb07"

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
