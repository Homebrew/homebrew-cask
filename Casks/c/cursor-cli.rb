cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.01.23-916f423"
  sha256 arm:   "bd33acce8516e0b5941e52b0c1ec50447d54cb909cbcddde97acb58d17c109e3",
         intel: "32e4719c84dc665d89a613febdca91668d494ebf6649336364ab370cfbf1b04d"

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
