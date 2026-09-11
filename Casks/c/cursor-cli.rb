cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.09.10-fd3934a"
  sha256 arm:   "aec0b01ae056de48a02fe315fbf0580eb91377752d993307499988cbe0285423",
         intel: "964cc72e88125c6b48ecaaebef68bf7cb752eb7b9d010a5535cf9f8e677dcf83"

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
