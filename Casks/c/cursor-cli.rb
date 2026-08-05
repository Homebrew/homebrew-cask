cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.08.04-aaa8809"
  sha256 arm:   "fc1d267622ff806a33dbf516148b9fd3957807f4d931c763118c269f92b535fc",
         intel: "3b2b95fa681745f30b1d031e67d23c1a19934ed42f39dea3ab7d2d7728320aa5"

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
