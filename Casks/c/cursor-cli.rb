cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.04.16-2d20146"
  sha256 arm:   "3a51430d1bcd1953f4943ae84a29382a8ce1024976960b27d4a47be37e24d987",
         intel: "83f57a5db1783edcc9686aface3cfb145d32bb5dd218ff72971e23e8e57eefb5"

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
