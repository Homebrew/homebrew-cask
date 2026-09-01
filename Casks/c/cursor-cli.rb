cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.08.31-4057e58"
  sha256 arm:   "a94483cf5a1607bfe12cb34216be0c8f95899f0f698fb85e500ba28d7332fbb0",
         intel: "03e6693071036bc4c5259b825edad5ad0be5265ba0d7cd0f6b83004f8664aa6e"

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
