cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.20-f1b214f"
  sha256 arm:   "e12d4730f89e96b5303f9a7203fb69d45b81ca07bd75c471d979dd4c59c129b6",
         intel: "291102512a98a21ac2885dd8c9265e27431a4616fb87e3be2b2a827e909b57cc"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/})
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
