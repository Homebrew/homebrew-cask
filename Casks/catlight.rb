cask "catlight" do
  version "2.38.11"
  sha256 "a7d3ba12c4342d8bbcceaa07a83a35d9565bb42281ab5431e077eef170cf218d"

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
