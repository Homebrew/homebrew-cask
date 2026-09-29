cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.28-64d2043"
  sha256 arm:   "c0d7e9cd2e62438610b886d3439907dc1f98c2923b07b3a41416cc919aaf53c7",
         intel: "3efe0dff2f3d92a1e8139e33fef182801556b57ed50a6afd7bac19c4fad09549"

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
