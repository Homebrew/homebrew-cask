cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.02.13-41ac335"
  sha256 arm:   "89bd19b1755cd98a8090fb8c89ee24c16205ae635c0fed6f5f7b5cbf203f3c9c",
         intel: "29c9864fa58211cf7ba8aaad6649c5b14a3d457d923aeca3bfa2727e7aefdceb"

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
