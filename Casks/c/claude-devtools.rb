cask "claude-devtools" do
  arch arm: "-arm64"

  version "0.4.4"
  sha256 arm:   "2fde2fe7304a2ba66141499888838a453b226972cf3a834c0d46d348f21b3001",
         intel: "6df46ba3d690bf313486fb3ef6eb5b51d7d6e0fcc896d59f0af33b2e2eb2a6ab"

  url "https://github.com/matt1398/claude-devtools/releases/download/v#{version}/claude-devtools-#{version}#{arch}.dmg"
  name "Claude DevTools"
  desc "Visualise and analyse Claude Code session executions"
  homepage "https://github.com/matt1398/claude-devtools"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "claude-devtools.app"

  zap trash: [
    "~/Library/Application Support/claude-devtools",
    "~/Library/Caches/com.claudecode.context",
    "~/Library/Preferences/com.claudecode.context.plist",
  ]
end
