cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.10.12-d47ca18"
  sha256 arm:          "b6bc844fd2ec1ae99f5f24fa68fa08b0acf14fdb6c7b924916226fd59a55f3e7",
         intel:        "8f34369468027cbe55dc2ca71667bd3a75baf5432187392e22e4831d4404a4bc",
         arm64_linux:  "2cbb98b79e821b3b08e76a2eb4de4c9333544af3bc81aba8c8d581256af71e7a",
         x86_64_linux: "ba41befe41e7d99ecec22eb0aa01720c9cd475d66035f4d90d2acfd74bcd8fdb"

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
