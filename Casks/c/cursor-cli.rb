cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.02.27-e7d2ef6"
  sha256 arm:   "219104f9c90a4530e2dec0cba8aa89926c8cdd41fd147d2dad105c7d2a8055e8",
         intel: "d06bce835cbb3b6ecf15dc33f900e132735e0d66c517399b93799ed681ec249e"

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
