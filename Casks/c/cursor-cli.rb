cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.07.01-777f564"
  sha256 arm:   "853979acec109c887623013623ad4dbe1f44d4cbe598ebefaa0e55145d9c993d",
         intel: "267453cac5debb39d996052e443b30b722bc0943b2ba62568e6cad0463cdbbd1"

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
