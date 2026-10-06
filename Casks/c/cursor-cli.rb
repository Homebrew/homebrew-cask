cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.10.01-e373342"
  sha256 arm:          "629e51de43a0b7fb3b86f5ebc7e579f7df7df941b39f29e82945cde750145afc",
         intel:        "a80db6e15626e0aa7af60fab3a95c98a243e2c1513c0c9485344a553d7b7b00e",
         arm64_linux:  "785c5f6bf2a60eb1121e27ed8c14f5ee07ed1b5b6692324f2d9a997238245eb5",
         x86_64_linux: "a79726c6e644520e993970be4c45775a6889802b67abe461a677a53219ae28e8"

  url "https://downloads.cursor.com/lab/#{version}/#{os}/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:[.-]\d+)+(?:[._-]\h+)?)/}i)
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
