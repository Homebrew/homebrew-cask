cask "claude-devtools" do
  version "0.4.2"

  on_arm do
    sha256 "66b8c0dd5cb39d6ee2771c3ef483e4a903f518054e7abfeb37746aad2145a4cc"

    url "https://github.com/matt1398/claude-devtools/releases/download/v#{version}/claude-devtools-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "25794c903788e69d52d49acdee2a141caf82f3bac3a4f624eb2d51f96b7f50d0"

    url "https://github.com/matt1398/claude-devtools/releases/download/v#{version}/claude-devtools-#{version}.dmg"
  end

  name "Claude DevTools"
  desc "Visualize and analyze Claude Code session executions"
  homepage "https://github.com/matt1398/claude-devtools"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"
  auto_updates true

  app "claude-devtools.app"

  zap trash: [
    "~/Library/Application Support/claude-devtools",
    "~/Library/Caches/com.claudecode.context",
    "~/Library/Preferences/com.claudecode.context.plist",
  ]
end
