cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.23-86fc751"
  sha256 arm:   "fa3fe13d5589c586ff132a24c16eea96fb8efde88afdefddcd11d80fa199f3a5",
         intel: "809335cd4a92f7c11a20f605213585b6136c7bfe6722069facf94e988d3ed0e7"

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
