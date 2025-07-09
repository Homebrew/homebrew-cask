cask "catlight" do
  version "3.8.3"
  sha256 "57cecfff32cbc12e9c7a2c761306e34895909d2474bff3d1affc6e8827e94908"

  url "https://download.catlight.io/rel/mac/release/CatLightSetup-#{version}.zip",
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
