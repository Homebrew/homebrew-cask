cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.03.20-44cb435"
  sha256 arm:   "db989e8406a03fa86747702d28cad1525c8b72dac5ec5bea65db9b70c11881d4",
         intel: "6101b6bb98a119b96299e7ee4907148b7ce4e171d7ee87a5d9b9a569a7259c45"

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
