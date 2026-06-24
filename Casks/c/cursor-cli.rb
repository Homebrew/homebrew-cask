cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.06.24-00-45-58-9f61de7"
  sha256 arm:   "39ad91c3275fefc092631387b77d12def96ba8e394493563a0bef3d44c81475c",
         intel: "d8e8323cd2e4857d5eae889a55b69d979eee982535015c3c28af90d1099f8118"

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
