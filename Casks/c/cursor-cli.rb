cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.01.17-d1d8722"
  sha256 arm:   "b672ab03080db03a17f6c0b2dbf35793f4af4db9a1d2f08f040b1bf737a4b6c6",
         intel: "e0935c532265ac700a1c030abc38dfa67d94f6066e882db570736518b5c08053"

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
