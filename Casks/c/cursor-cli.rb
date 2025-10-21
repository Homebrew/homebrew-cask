cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.21-224d294"
  sha256 arm:   "4ca5c2b4bb05170c15971f0357274d92424ad030cb295d64378fb7a144fdab05",
         intel: "e774f12f94a0f14100735c90a78f24980e0b556e07ecbca532dc7017749a468d"

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
