cask "toolhive-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.41.1"
  sha256 arm:   "4f0f798da81b94aa99a16ca0cd4f9516d7245ebed1cf95802b5f25d2be410308",
         intel: "61e75564799de2c7828cabaf92e3110507fa2e7dc258935d50b1debe976c3049"

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
