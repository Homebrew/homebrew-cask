cask "toolhive-studio" do
  version "0.36.7"

  arch arm: "arm64"
  sha256 arm: "7b2818824985b0a1481caaa6857318611f11dde918ea80da771d87a75e530628"

  url "https://github.com/stacklok/toolhive-studio/releases/download/v#{version}/ToolHive-#{arch}.dmg"
  name "ToolHive"
  desc "Desktop application to install, manage, and run MCP servers"
  homepage "https://github.com/stacklok/toolhive-studio"

  depends_on arch: :arm64
  depends_on :macos

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ToolHive.app"

  zap trash: [
    "~/Library/Application Support/ToolHive",
    "~/Library/Preferences/dev.toolhive.studio.plist",
    "~/Library/Logs/ToolHive",
  ]
end