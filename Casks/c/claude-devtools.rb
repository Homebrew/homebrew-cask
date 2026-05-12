cask "claude-devtools" do
  arch arm: "-arm64", intel: "-x64"

  version "0.4.16"
  sha256 arm:   "3f9268b0b6c5c4b082fa1838c97840cbbcc3df8d089c76a34a2dfe01674b4a7b",
         intel: "f68a13ab7356d42a89b0d39c7c896f42fde8e1606af234d567c401636d10db7d"

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
