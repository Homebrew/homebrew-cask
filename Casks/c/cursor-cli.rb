cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.04.15-dccdccd"
  sha256 arm:   "0a9bb8bb8c588945cb02d48010a980bd4a03470091e8347f40b2517a3b3f0514",
         intel: "90075e7ec2325111a18b1ce6175c62d8de243948ace376f016d44288997c8219"

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
