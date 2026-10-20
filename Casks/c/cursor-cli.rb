cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.10.19-6bbf2c4"
  sha256 arm:          "095dccb923488d280aae697ba68c13a92bbd9ce1dc6105401e147e25869f2b13",
         intel:        "b9fc62adba5a06069b1c231fa463d3cc0d5182357b957094f19483455d6f4ce0",
         arm64_linux:  "71a90f12a8b8183a71442b7ed4037bddc1a0f88114ec4fb9ec92782acb8e7d84",
         x86_64_linux: "cf80cc18d8b33bf33e762353977ca1868cfc45290c92c0ffdcef83bb8b37b44f"

  url "https://downloads.cursor.com/lab/#{version}/#{os}/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:[.-]\d+)+(?:[._-]\h+)?)/}i)
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
