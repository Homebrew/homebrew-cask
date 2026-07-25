cask "toolhive-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.39.1"
  sha256 arm:   "53afee92b67e9c52acaa578656079f3ba221da7d545b7ac072635d6574b8dc58",
         intel: "069d1fd6b039bf270100f1d9d02c99d5715f6bdb1736a6a5cbb926bb611f7b06"

  url "https://github.com/stacklok/toolhive-studio/releases/download/v#{version}/ToolHive-#{arch}.dmg"
  name "ToolHive"
  desc "Desktop application to install, manage, and run MCP servers"
  homepage "https://github.com/stacklok/toolhive-studio"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "ToolHive.app"

  zap trash: [
    "~/Library/Application Support/ToolHive",
    "~/Library/Logs/ToolHive",
  ]
end
