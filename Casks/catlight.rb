cask "catlight" do
  version "2.36.0"
  sha256 "33ace4795709853523d384e51a6a084090b7ee9f548483e0a746cd7ec50daa5f"

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
