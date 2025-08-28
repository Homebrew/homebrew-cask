cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.08.27-24c29c1"
  sha256 arm:   "fb30b8ad3cd30a3d4c482600fffffa06bf3649f7d345d2021ee86785a5ec0168",
         intel: "9609fb81a888b4bcef861ede3ed51c0c2a8fb99154584dd60d2ce7e536374dac"

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
