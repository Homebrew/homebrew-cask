cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.01.23-6b6776e"
  sha256 arm:   "1b4ff222a6fc551c0c28cd04bf918b3f7ad0d93675cdd6b0b78759b618775cad",
         intel: "085b99278f76204adcc3a3756a5b7f76446bf5095f955dda3bc9252a032334f1"

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
