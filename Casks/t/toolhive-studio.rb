cask "toolhive-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.38.0"
  sha256 arm:   "ba2064e36f49992c45d322b78b0191f819b15a9d4b8e45a6a1c41c41b2449c88",
         intel: "efde56951962f25a67618fabf2a6bbe65a5ba72ac94d45e8054ed571d2e8deda"

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
