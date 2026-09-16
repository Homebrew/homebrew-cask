cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.15-d2fe57e"
  sha256 arm:   "f51579a1ea1725c2bebd1a14064d52bdea5e05aaff47cfa7d5b5d0d07a8d3fbc",
         intel: "2e3f803b87994130e54f920b5c7fa46917f8034c762308d45b75d7013597e97a"

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
