cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.12.17-996666f"
  sha256 arm:   "fa5a13463b58ef1e5460328af7cf91191167ddc7e9e4598794615ea7ca7b8a3b",
         intel: "ddfe3611dab28c1315c4ea8d85d1ed993c11aa15b6fc6527980e8f06ead73cd8"

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
