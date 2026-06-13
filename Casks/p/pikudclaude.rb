cask "pikudclaude" do
  version "0.3.1"
  sha256 "e850ff658dc2515be71bc4523e0df47ccf2a18950a54300cf9cc05edf1ad54a4"

  url "https://github.com/wmgltd/PikudClaude/releases/download/v#{version}/PikudClaude-#{version}-arm64.dmg",
      verified: "github.com/wmgltd/PikudClaude/"
  name "PikudClaude"
  desc "Multi-session terminal hub for Claude Code with Hebrew/RTL support"
  homepage "https://pikud.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey
  depends_on arch: :arm64
  depends_on formula: "tmux"

  app "PikudClaude.app"

  zap trash: [
    "~/Library/Application Support/pikudclaude",
    "~/Library/Caches/com.kobi.pikudclaude",
    "~/Library/Caches/com.kobi.pikudclaude.ShipIt",
    "~/Library/Logs/pikudclaude",
    "~/Library/Preferences/com.kobi.pikudclaude.plist",
    "~/Library/Saved Application State/com.kobi.pikudclaude.savedState",
  ]
end
