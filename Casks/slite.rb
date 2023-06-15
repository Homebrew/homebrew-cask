cask "slite" do
  arch arm: "arm64", intel: "x64"

  version "1.2.18"
  sha256 arm:   "e04c49fc4df56ede409d37cc543860103326d80a17d1adc2ac699ba9bd3292f0",
         intel: "e66e8a6a16ebd1e6eceeed8fad6098601636b787a643f3d1c997f1ad5f0a8356"

  url "https://download.todesktop.com/20062929x31pwfi/Slite%20#{version}-#{arch}-mac.zip",
      verified: "download.todesktop.com/20062929x31pwfi/"
  name "Slite"
  desc "Team communication and collaboration software"
  homepage "https://slite.com/"

  livecheck do
    url "https://download.todesktop.com/20062929x31pwfi/latest-mac.yml"
    strategy :electron_builder
  end

  app "Slite.app"

  zap trash: [
    "~/Library/Application Support/Slite",
    "~/Library/Caches/com.slite.desktop",
    "~/Library/Caches/com.slite.desktop.ShipIt",
    "~/Library/Preferences/com.slite.desktop.helper.plist",
    "~/Library/Preferences/com.slite.desktop.plist",
    "~/Library/Saved Application State/com.slite.desktop.savedState",
  ]
end
