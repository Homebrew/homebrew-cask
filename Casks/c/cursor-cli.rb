cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.10.14-941492e"
  sha256 arm:          "c6d9e2eaa1b1e24221517e0b4206b1f1593792e6f0d8a52e9b507bbe7ab0cc77",
         intel:        "10fbd5d213ab7edfc7377dd00d32e856d8a99c2ec42c3b4d265338c9e533f723",
         arm64_linux:  "cbba40d90d7f699874e133a5c15bf3854cee006565bd3bb00a6c79b49d62b0d0",
         x86_64_linux: "6f6bf39dd2df29dcd38643cdfab0155ce71699953889f732deec123f6562bb2d"

  url "https://downloads.cursor.com/lab/#{version}/#{os}/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:[.-]\d+)+(?:[._-]\h+)?)/}i)
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
