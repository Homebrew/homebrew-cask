cask "toolhive-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.36.7"
  sha256 arm:   "7b2818824985b0a1481caaa6857318611f11dde918ea80da771d87a75e530628",
         intel: "c1790e02379f93918c1970fe97be92f7116441652ab6932edcbe4b48f6fff5d2"

  url "https://github.com/stacklok/toolhive-studio/releases/download/v#{version}/ToolHive-#{arch}.dmg"
  name "ToolHive"
  desc "Desktop application to install, manage, and run MCP servers"
  homepage "https://github.com/stacklok/toolhive-studio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "ToolHive.app"

  zap trash: [
    "~/Library/Application Support/ToolHive",
    "~/Library/Logs/ToolHive",
  ]
end
