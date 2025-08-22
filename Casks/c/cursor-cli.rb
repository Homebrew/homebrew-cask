cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.08.22-82fb571"
  sha256 arm:   "5cdd90685b7f95b5477c57dd65ace746f525316207abb9d46dedeea6dac68cdd",
         intel: "80533e8a05c674b2c95d51c0a2eea9453215aac83a88f6a06a084103345c3d7c"

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
