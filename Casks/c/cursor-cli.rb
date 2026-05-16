cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.05.16-0338208"
  sha256 arm:   "c55c1b712b71dd45bcf4f042138cdf0163544afb383659de2cf818f322432da8",
         intel: "d3f089c73d78260ac203085b5de4875d8c27a6f8780276e3507394ccdc71049c"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/}i)
  end

  depends_on :macos

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
