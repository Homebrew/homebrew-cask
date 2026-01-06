cask "sanebar" do
  version "1.0.0"
  sha256 "3967b087399cb375de2bab78f1fcdee85cb9890f89e0589813c5a1c98fea2447"

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
