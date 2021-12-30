cask "catlight" do
  version "2.35.1"
  sha256 "086409d6fecbd24ea49cb3ef75d33c9cd590c31e433b949dd56aa8d13ca979d5"

  url "https://download.catlight.io/rel/mac/beta/CatLightSetup-#{version}.zip"
  name "catlight"
  desc "Action center for developers"
  homepage "https://catlight.io/"

  livecheck do
    url "https://catlight.io/downloads/mac/beta"
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
