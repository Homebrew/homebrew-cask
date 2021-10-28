cask "keycombiner" do
  version "0.3.4"
  sha256 "86194712bc26b5310da6c6a5c3df69764f15ddbe43622ec05449aba106f395b9"

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
