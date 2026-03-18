cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.03.18-f6873f7"
  sha256 arm:   "287c9b1e042b20e0476e22594846c5546d05a75f9344fbcaef92573dc49330a9",
         intel: "b9b11a908f2ddff049f5e55c62e786120ed15a1bd38d66c93063707b217d5741"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/}i)
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
