cask "keycombiner" do
  version "0.8.0"
  sha256 "1e8d9fad195472cea75e47491a59e10a8fb3d734fcdd3c1eb2364591a3ff8a53"

  url "https://keycombiner.com/download/KeyCombiner-#{version}-universal.dmg"
  name "KeyCombiner"
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
