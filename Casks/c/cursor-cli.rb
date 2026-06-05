cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.06.04-5fd875e"
  sha256 arm:   "1acc0f746c219bf93078e4ceebabd64e9a29b5f44a3746ce9a30b014b746d2c7",
         intel: "bf4352cf73c40a83c98340bd5269a0a5cb84f5010427176bf6d64891eaca6226"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/}i)
  end

  depends_on :macos

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
