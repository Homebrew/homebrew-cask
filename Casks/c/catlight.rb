cask "catlight" do
  version "3.9.1"
  sha256 "1bee5f064841fe331e7acac4be2c78f7d114ff161a2eaa2b3d8ce27b379d88fc"

  url "https://download.catlight.io/rel/mac/release/CatLightSetup-#{version}.dmg",
      user_agent: :fake
  name "CatLight"
  desc "Action center for developers"
  homepage "https://catlight.io/"

  livecheck do
    url "https://catlight.io/downloads/mac/release"
    strategy :header_match
  end

  app "Catlight.app"

  zap trash: [
    "~/Library/Application Support/Catlight",
    "~/Library/Logs/Catlight",
    "~/Library/Preferences/Catlight.plist",
    "~/Library/Saved Application State/Catlight.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
