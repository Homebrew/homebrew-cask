cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.01.17-d239e66"
  sha256 arm:   "9948c7ffd003160b02742bd499250c6dea4950703fe1bcfb234d5ce75b6500cf",
         intel: "e8b357cd587b869005656099504089288bfd473b968a1dc6ffef5c163a1fdb33"

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
