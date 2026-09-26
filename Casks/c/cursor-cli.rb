cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.26-dd393fe"
  sha256 arm:   "538827d96a779bab854a865c8e42859e8e87db34b5f69770261b90fc8cfff191",
         intel: "ed1771c44cbf0f8059c67cac0d939e6a60eb730bd066d7dc4cbb14de314cfb6e"

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
