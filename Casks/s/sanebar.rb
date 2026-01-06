cask "sanebar" do
  version "1.0.0"
  sha256 "dabd78706a334f57c2a282d93f60049a27b6fa49c195a800789e017d01abc555"

  url "https://github.com/stephanjoseph/SaneBar/releases/download/v#{version}/SaneBar-#{version}.dmg"
  name "SaneBar"
  desc "Privacy-focused menu bar manager for macOS"
  homepage "https://github.com/stephanjoseph/SaneBar"

  depends_on macos: ">= :sonoma"

  app "SaneBar.app"

  zap trash: [
    "~/Library/Preferences/com.sanevideo.SaneBar.plist",
    "~/Library/Application Support/SaneBar",
  ]
end
