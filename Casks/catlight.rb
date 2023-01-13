cask "catlight" do
  version "2.39.3"
  sha256 "5e3ad4ea93bc914c362201895ae9044923c0be81a8c678a802234186d292aeb1"

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
