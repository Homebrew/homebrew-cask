cask "claude-devtools" do
  arch arm: "-arm64"

  version "0.4.9"
  sha256 arm:   "7409a45e5ff268a907467a66045cbf12d6537786e7d7d2c8e7c5b302a7935316",
         intel: "89b8179a68dbb92bc7e1dd9665427d0e48344f80a27af213af576d6ad0145324"

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
