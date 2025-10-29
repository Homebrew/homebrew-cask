cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.28-0a91dc2"
  sha256 arm:   "556efa2f1d952aca621a4a61a7be226f8f85e4509dbbcefdddffb1bc3ebb3a93",
         intel: "3d6c79400b3ce2058d3876192f6d2e1675be9b8ac0a514fa8382ed69b8cbfa5c"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/})
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
