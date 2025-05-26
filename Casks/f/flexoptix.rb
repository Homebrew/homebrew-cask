cask "flexoptix" do
  version "5.42.0-latest"
  sha256 "faab7889303850000a0768d4511e8dc45c64f6ff6ac0980db85b3cf30f937f71"

  url "https://flexbox.reconfigure.me/download/electron/mac/x64/FLEXOPTIX%20App-#{version}.dmg",
      verified: "flexbox.reconfigure.me/download/electron/mac/x64/"
  name "FLEXOPTIX App"
  desc "Connect to your FLEXBOX without cables and configure transceivers"
  homepage "https://www.flexoptix.net/en/flexoptix-app/#"

  livecheck do
    url "https://flexbox.reconfigure.me/download/electron/mac/x64/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
