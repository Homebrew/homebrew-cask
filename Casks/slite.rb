cask "slite" do
  arch arm: "arm64", intel: "x64"

  version "1.2.16"
  sha256 arm:   "47bb631c260b8e1a0ea99a4db9cb6e2ef4c5d25aec2b90b4759bcf06c5648a6b",
         intel: "7de3fe3355bd657ba9513169f08526a4e8bb6306686f468d91de4ad4a2d0da62"

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
