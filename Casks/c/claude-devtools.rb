cask "claude-devtools" do
  version "0.4.1"

  on_arm do
    sha256 "e6796cf0fdec123a882ac4781fe8935ff9bb4597553cf6392a72877bb4385717"

    url "https://github.com/matt1398/claude-devtools/releases/download/v#{version}/claude-devtools-#{version}-arm64.dmg"
  end
  on_intel do
    sha256 "828612ce5080871acdc016d0ab3117d823b140bc3cbff3bef1c6d91140a68628"

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
