cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.03.30-a5d3e17"
  sha256 arm:   "fa5e5ffd6dfcac995b3b3ae6b0175a77e3d7e8cbb31da431be12307601032ab4",
         intel: "f73e274d28a41bf59392c0b42af80ad66d6066a523b4d437b173802738a45848"

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
