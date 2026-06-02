cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.06.02-8c11d9f"
  sha256 arm:   "7f353c8f63bb7f4d1b2a1a19270d35a0d5a4ff8886fe42be420b416ecfc627a3",
         intel: "91ef74b2ecc387bb60873213ebfbfd1147cbfc6137d7338be2118c2fbc0a64b6"

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
