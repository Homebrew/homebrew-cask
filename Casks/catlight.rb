cask "catlight" do
  version "3.1.4"
  sha256 "63b86b512d6f19bba5e69c8d0af3cbecc326355938650555288ad53b2c0cb5e4"

  url "https://download.catlight.io/rel/mac/release/CatLightSetup-#{version}.zip"
  name "catlight"
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
end
