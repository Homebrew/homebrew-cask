cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.09.12-4852336"
  sha256 arm:   "8efda0e332a171618973fd3f2d26285e25c78c9aa299a68fc36e31ef7a349ba3",
         intel: "88fdd1360cb9a9078677d493588fde37ca7630a1b7646750fcd52c427fe852b9"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/})
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
