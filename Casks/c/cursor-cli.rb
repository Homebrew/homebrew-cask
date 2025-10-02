cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.02-bd871ac"
  sha256 arm:   "76b6da3cce21a39ff5be641632005e966a91ecda78e70fd747466c7d1e77bd92",
         intel: "feace72712e9c94047e0beb32520c1e66545564d98ed4242b76530e60ed4e804"

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
