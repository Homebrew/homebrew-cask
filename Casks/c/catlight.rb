cask "catlight" do
  version "3.8.4"
  sha256 "866c6e3f72ccbb81b9af1ac6864e22ff5773991002d391c78e20fcaf8a05d10e"

  url "https://download.catlight.io/rel/mac/release/CatLightSetup-#{version}.dmg",
      user_agent: :fake
  name "CatLight"
  desc "Action center for developers"
  homepage "https://catlight.io/"

  livecheck do
    url "https://catlight.io/downloads/mac/release"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

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
