cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.05.15-3f71873"
  sha256 arm:   "53d1f804a61fc722d2d3886c0c646c8cea187bf6e65b3a186b17c2a221b790e8",
         intel: "8f39568c2a434d6caf62a41674de4ceea1caa5164fbb17225777365cbb6c86d6"

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
