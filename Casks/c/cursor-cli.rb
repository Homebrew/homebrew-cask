cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.01.09-6d4aaf8"
  sha256 arm:   "c44b2797885a5ddb9a970432b8aa201e74033ea172eb8c52f0fcbfbf90bbcda5",
         intel: "28a3990f2a8ca83411f20d32cadf9b5284713420aafa84794fa39be5dd807070"

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
