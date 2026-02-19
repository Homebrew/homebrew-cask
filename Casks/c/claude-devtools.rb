cask "claude-devtools" do
  arch arm: "-arm64", intel: ""

  version "0.4.2"
  sha256 arm:   "66b8c0dd5cb39d6ee2771c3ef483e4a903f518054e7abfeb37746aad2145a4cc",
         intel: "25794c903788e69d52d49acdee2a141caf82f3bac3a4f624eb2d51f96b7f50d0"

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
