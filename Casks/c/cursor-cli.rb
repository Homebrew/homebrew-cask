cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.07.23-e383d2b"
  sha256 arm:   "f2eb25851f2079dcdf0558a816e06c402d187abfca93255d35167020439ebbf2",
         intel: "f44194dfcb41468f85bfb4e53978ac098a2a78ce629806490c32b80b40975aa2"

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
