cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.05.24-dda726e"
  sha256 arm:   "af08b43633a6401dd2f3d1fccb92a6175f6fc5b26d8fc82ffe9eecbacc78e50f",
         intel: "e97ea3699056fdd782ca22ff2808d3a95085d1b1b095db38c265371a44a97e65"

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
