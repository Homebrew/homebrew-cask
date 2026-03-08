cask "claude-devtools" do
  arch arm: "-arm64"

  version "0.4.7"
  sha256 arm:   "9a1b796dee4ea6a1fd8190e937d63c54edcdb2eb16a76d2ffd9a1432d41d52bd",
         intel: "83b346d3e69c1fd16753100bb173d62c99f7b40acb52fd84e4474d90fe82c21e"

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
