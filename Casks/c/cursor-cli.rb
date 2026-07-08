cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.07.08-0c04a8a"
  sha256 arm:   "972fbbab1cedd7058eb82468c0722b5bf2b3c737cf021a4148f9b48aeb7e1eda",
         intel: "91bb1c70a3872f58a15896f7f9f2133281a6351a0af9e5f48b3c43994e9d6232"

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
