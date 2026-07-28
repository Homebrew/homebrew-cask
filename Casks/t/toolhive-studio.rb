cask "toolhive-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.39.2"
  sha256 arm:   "e321c955f826422fd4d52d357685850fca1b80d01ef7b04bd449be8854557517",
         intel: "f82018952652dfc037dec8a29edf06c91ee91e2f71e9c0211d427c3c9e2f9554"

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
