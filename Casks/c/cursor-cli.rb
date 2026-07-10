cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.07.09-a3815c0"
  sha256 arm:   "009ee857d49f17c10e5035e33884eb258d1f3839c1d52bdb35f35a117369dfde",
         intel: "066c499f6ec43734254337c493aeec5aabb4a6ae6d6df7da214fa86ceda9e45d"

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
