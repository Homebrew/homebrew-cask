cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.02-c22c1a3"
  sha256 arm:   "3d814861be3225fc8c38be320fb22e344d8f711a24279f1f9119e7b313ea51e7",
         intel: "59e8afd9b4f5eba44682018b9428c4a94e230d090871eae19e703540aad6ef6a"

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
