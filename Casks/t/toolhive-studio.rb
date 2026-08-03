cask "toolhive-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.39.3"
  sha256 arm:   "fd1058f5412cd32e9fd1d9cc59bd42982152718ead6287404543159c05b89d6c",
         intel: "a65b668fb435231b7addaf520a541970e3e622a50c9e9ce88be397fa7b23072b"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.toolhive.sfl*",
    "~/Library/Application Support/ToolHive",
    "~/Library/Caches/com.electron.toolhive*",
    "~/Library/HTTPStorages/com.electron.toolhive",
    "~/Library/Logs/ToolHive",
    "~/Library/Preferences/com.electron.toolhive.plist",
  ]
end
