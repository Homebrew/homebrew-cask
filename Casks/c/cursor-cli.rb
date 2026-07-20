cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.07.17-3e2a980"
  sha256 arm:   "2123f936b7be76ea0c12f7ebb057caeb8eb46ee4418b71857624ffe12e5e0546",
         intel: "6dfdfad6bcc23cbbaad4a06fe42d76daf13b4fca9343f26d6b2adda4599fdff9"

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
