cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.08.09-d8191f3"
  sha256 arm:   "bf3de2f105c9a5e1d12776d91e1d3058afc20ac35716c936a74f29ce4cf23f28",
         intel: "cee85899101bdafec1524a3c757fa2f24c55ec2e44f3c1bf210357ef63d61dd2"

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
