cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.05.20-2b5dd59"
  sha256 arm:   "291a16dbbf9e8e4641d4905a33c22d9edcaf596410dda615a938cd4fcdaa08f7",
         intel: "a66257386c153ab609db2d81e649484786a7f9fb13feaf4e3a554274990727a0"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/}i)
  end

  depends_on :macos

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
