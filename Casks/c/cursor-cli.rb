cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.01.02-80e4d9b"
  sha256 arm:   "072dda7d635751121c99a663164f5fd00c34679e12df3ae0798c335f4953043d",
         intel: "1790f095960aefd64d4994bd0614cc0faaf251b6e42c7a9a0e7c2142d9ad2ca7"

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
