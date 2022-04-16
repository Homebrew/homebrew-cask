cask "keycombiner" do
  version "0.7.2"
  sha256 "9e9e6b24f82f74009470415f2484f58ce045eedfdf138588791feb552f8ad61c"

  url "https://keycombiner.com/download/KeyCombiner-#{version}.dmg"
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
