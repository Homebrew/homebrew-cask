cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.09.17-25b418f"
  sha256 arm:   "07956e1381495b6d331f26a8b8d3025696f4d8c4350c8053e25213f006dd2ca6",
         intel: "74016b595381b0f4732e9d0ca9494f46c251435c394a460dc3fa0ff5d122277c"

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
