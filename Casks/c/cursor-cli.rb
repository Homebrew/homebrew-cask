cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.06.03-0bbb28e"
  sha256 arm:   "5cb95cbde9137441ec20e72f6c9d74a0ad2e692eab675b80556eb0a52ea4d1de",
         intel: "b6f83fb8bcd9c4ce5bb9328183fa067811458897167982b503deca747259a8fe"

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
