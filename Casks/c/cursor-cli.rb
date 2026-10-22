cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.10.22-27dcf5f"
  sha256 arm:          "2f5b0a3dd5fb951cecffac813867d8a08d810e59837d59fd5f12d69b922398d7",
         intel:        "7a3cfbf0fcfb979b6213feb5f9fd10fbc7cd4e51ab28c3b572bb935e0b114961",
         arm64_linux:  "22a36df9720830668ccd4d707e5190204ab9c8a0efb2f068cc914895f804d3ec",
         x86_64_linux: "85296944e4600a83c4b764f578d1502bf9c416db200d33a593e8f3ecabfdc294"

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
