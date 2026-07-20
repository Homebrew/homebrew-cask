cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.07.16-899851b"
  sha256 arm:   "c0cd7b63c01fb63b44e33c7a2613432e8fd8cb13881da72ac1613c9f1408115f",
         intel: "5cbcc4ab84e15b78cf7dab792313c8c8f68e8220573883d7ec865635213b7e0b"

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
