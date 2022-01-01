cask "keycombiner" do
  version "0.6.0"
  sha256 "fce85e5e5530f8910fc59ac8a086a1d8bf33ab3f55a2081fc56a90b3b2b4a91c"

  url "https://keycombiner.com/download/KeyCombiner-#{version}.dmg"
  name "keycombiner"
  desc "Instant shortcut lookup"
  homepage "https://keycombiner.com/"

  livecheck do
    url "https://keycombiner.com/download/latest-mac.yml"
    strategy :electron_builder
  end

  app "KeyCombiner.app"

  zap trash: [
    "~/Library/Application Support/keycombiner",
    "~/Library/Logs/KeyCombiner",
    "~/Library/Preferences/com.keycombiner.app.plist",
    "~/Library/Saved Application State/com.keycombiner.app.savedState",
  ]
end
