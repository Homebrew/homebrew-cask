cask "affinity-publisher@1" do
  version "1.10.8"
  sha256 "6d5675970b745775bd5c35d28d20e1c68fe0771cdc2c17161f6762c2730a1278"

  url "https://affinity-update.s3.amazonaws.com/mac/retail/Affinity%20Publisher-#{version}.app.zip",
      verified: "affinity-update.s3.amazonaws.com/"
  name "Affinity Publisher"
  desc "Professional desktop publishing software"
  homepage "https://affinity.serif.com/en-us/publisher/"

  livecheck do
    url "https://go.seriflabs.com/affinity-update-mac-retail-publisher"
    strategy :sparkle, &:version
  end

  auto_updates true

  app "Affinity Publisher.app"

  zap trash: [
    "~/Library/Application Support/Affinity Publisher",
    "~/Library/Caches/com.seriflabs.affinitypublisher",
    "~/Library/Saved Application State/com.seriflabs.affinitypublisher.savedState",
  ]
end
