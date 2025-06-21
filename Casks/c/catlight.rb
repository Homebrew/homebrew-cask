cask "catlight" do
  version "3.8.1"
  sha256 "8d60ff54837c0157755868bb8bba11132979ee690c68418813ef035e9abfb8b3"

  url "https://download.catlight.io/rel/mac/release/CatLightSetup-#{version}.zip"
  name "CatLight"
  desc "Action center for developers"
  homepage "https://catlight.io/"

  livecheck do
    url "https://catlight.io/downloads/mac/release"
    strategy :header_match
  end

  no_autobump! because: :requires_manual_review

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
