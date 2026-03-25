cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.03.25-933d5a6"
  sha256 arm:   "d504e33bdf50bddbe246ca2ce69bceadf4762f57f08fa9c18749cfa9c635aa72",
         intel: "24350ca5d1449cf8182568d75c8b1da8e55b930e836dc6a16dc0956236ea2b1a"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/}i)
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
