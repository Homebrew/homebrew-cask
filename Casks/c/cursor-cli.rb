cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.06.26-7079533"
  sha256 arm:   "50ef12440e9d7a9c0ef52361bd897db8ecbd0e9eb6e6f1d5362c9fc6d9aaddce",
         intel: "e49d92039028c8ec53f4d839f0c9f2085b4d9654026216cee4c41968e37082c9"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install?channel=prod"
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
