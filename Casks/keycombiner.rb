cask "keycombiner" do
  version "0.5.0"
  sha256 "506126e1a5aa180520cec522ea24083f3f7196bce45f3a9d9a175bdc923bfdc3"

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
