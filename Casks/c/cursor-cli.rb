cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.06.29-2ad2186"
  sha256 arm:   "57b423792eb261e5b012318d2fb906c797bf825fcc8917aecad8b238cd3b3cd4",
         intel: "b325d115b86333e51bdf1b319d7b4c34dfc1695f1639f633c47b4c40f8ab404d"

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
