cask "claude-devtools" do
  arch arm: "-arm64", intel: "-x64"

  version "0.5.0"
  sha256 arm:   "f37ec018a4052aa7b73e8ece741cf864bd2ee20c0e25b911211616f672bef441",
         intel: "886f7159620f14f3451bfbdb0fc2e473bfc2d0dcf415d597f5a715f6856dd7f1"

  url "https://github.com/matt1398/claude-devtools/releases/download/v#{version}/claude-devtools-#{version}#{arch}.dmg"
  name "Claude DevTools"
  desc "Visualise and analyse Claude Code session executions"
  homepage "https://github.com/matt1398/claude-devtools"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "claude-devtools.app"

  zap trash: [
    "~/Library/Application Support/claude-devtools",
    "~/Library/Caches/com.claudecode.context",
    "~/Library/Preferences/com.claudecode.context.plist",
  ]
end
