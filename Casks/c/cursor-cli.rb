cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.04.17-479fd04"
  sha256 arm:   "6f1f0390cc7f30a8914ad8b50f38b0f91aeffdd69ecebe4fad30f244e0975bbe",
         intel: "ea036af145072bb760bcac33cb8780407126abdea14e06e2fe4d0e8fc8db1d4a"

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
