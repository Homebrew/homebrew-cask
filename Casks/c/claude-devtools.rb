cask "claude-devtools" do
  arch arm: "-arm64"

  version "0.4.10"
  sha256 arm:   "bb61e85f9c4f64e181c61c4de0016edd206ebc46d624be0d91eeba3dbc17e18b",
         intel: "206e653313aeb5c97f937baea3bc8db823e249ff6e8d2c8d11a2e92ec1eb251d"

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
