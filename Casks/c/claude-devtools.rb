cask "claude-devtools" do
  arch arm: "-arm64"

  version "0.4.8"
  sha256 arm:   "66d3e203aface31c24525990bb2e8a24eb24c5a07a50dcc846221bc204e17aaa",
         intel: "22dcb5f407a207ac9f165c40de5b5b0bf5c0700abe1f2be7a5da21544862c3d6"

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
