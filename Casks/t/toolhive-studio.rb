cask "toolhive-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.40.1"
  sha256 arm:   "d53d2112af25444579805c769e41d0c21d0d53181ead8890b4a472a50135f3a0",
         intel: "3dabe6cddf15efd6921e34f48ee04c6a256b4c6be6be5d5e8c4e7b2c8ef6eabe"

  url "https://github.com/stacklok/toolhive-studio/releases/download/v#{version}/ToolHive-#{arch}.dmg"
  name "ToolHive"
  desc "Desktop application to install, manage, and run MCP servers"
  homepage "https://github.com/stacklok/toolhive-studio"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

  app "ToolHive.app"

  uninstall quit: "com.electron.toolhive"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.toolhive.sfl*",
    "~/Library/Application Support/ToolHive",
    "~/Library/Caches/com.electron.toolhive*",
    "~/Library/HTTPStorages/com.electron.toolhive",
    "~/Library/Logs/ToolHive",
    "~/Library/Preferences/com.electron.toolhive.plist",
  ]
end
