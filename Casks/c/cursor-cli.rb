cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.08-6caf4ff"
  sha256 arm:   "9c456cc432adc476202a2b09c21a10944fdf484b3ca55dcbf939bbc8ce30dcbe",
         intel: "a783b4d5f938b3ac7a92f65054c66422d8947138897029fdc9c2e8164397bc17"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:[.-]\d+)+(?:[._-]\h+)?)/}i)
  end

  depends_on :macos

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
