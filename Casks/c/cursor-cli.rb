cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.03.11-6dfa30c"
  sha256 arm:   "090a9dbc13d990991f546cede4a683d5da20ccac9e20dd340348e4f74587518f",
         intel: "e9db9815d8383fa63c89cdeb9cfebedf1063309a6a5bb7aeac5702d10a290a15"

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
