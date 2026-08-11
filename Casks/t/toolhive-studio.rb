cask "toolhive-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.39.4"
  sha256 arm:   "2dba7acde810abd9eddbb3429afbd833fac594eb57ed4a4935926c09da270822",
         intel: "49a0eadb3c36028e21da11aceeb1e3eb948116cddb12e282e5b55e08acdd7a0d"

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
