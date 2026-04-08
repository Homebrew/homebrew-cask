cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.04.08-e79b3e6"
  sha256 arm:   "13c63e0ceba5ed13f2946a5a4aaf7083530db4ed40fc2463538fed608fdf2ccf",
         intel: "128fea97ee716232d3cd505e79153e5e828cf6645f0c9c1830887fd9d579cd30"

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
