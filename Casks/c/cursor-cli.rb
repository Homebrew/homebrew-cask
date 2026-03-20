cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.03.20-7da3412"
  sha256 arm:   "08189a79657c603f4eb9ea62ddb52c327013fbd6c569a4c4fef630fe29969aaf",
         intel: "e366b080ecfbdd455243d629b2fcbe39252ccc2e6bbeef5e72c2b9df05734636"

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
