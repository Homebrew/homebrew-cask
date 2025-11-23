cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.11.20-a4d3945"
  sha256 arm:   "178d08772193cda79afb897a5f0e0d241ee9bd6c68ce422e297a2510d6b7bce4",
         intel: "a2b430f0267c26a8f6a377f7ba9c6e12895527dfa6fdc615f018d3f86001c369"

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
