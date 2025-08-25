cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.08.25-896bbe1"
  sha256 arm:   "ace704f053314c8fa2a202338b072402c31923c5590c224ccb79f6076879bfb7",
         intel: "bf3f5e8ed9d46c7344b83a9a65e9b45220362926ec18e8f6763f39ba041c5a11"

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
