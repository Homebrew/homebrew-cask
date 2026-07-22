cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.07.20-8cc9c0b"
  sha256 arm:   "d7c5ee9dad3e2fcef6922f5e1afc65bd9c61dc07712f6458e066a52be52b072d",
         intel: "e45ed7c85e20080310778ff5a27050c9617988dc5e75ad3faf00af81e4f7e011"

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
