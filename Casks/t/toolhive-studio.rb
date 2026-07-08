cask "toolhive-studio" do
  arch arm: "arm64", intel: "x64"

  version "0.37.0"
  sha256 arm:   "3b95caea82d9de8746eafbbe93d10a77ce0b5662c2de64f0de6c7b0cbd44b996",
         intel: "f938b056a1ff536f31a41c52221fd817b49f326019a6a8d539b7d22f45484e6e"

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
