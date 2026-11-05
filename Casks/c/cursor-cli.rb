cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.11.05-86047df"
  sha256 arm:          "67847e47e3ebd32b64c3fb4e6f36d475f1971b76e033b0ed6c9e01a3c1b440d7",
         intel:        "75f345ce7638ff136e5cd09c45c3b2de4e73e5f590b50655e01e826c02bd7cfa",
         arm64_linux:  "131554bfdbf683d8ebfef83a2bb46ac4e5d060f198711040b07ed063c2471871",
         x86_64_linux: "170b77786cbf4c93064d64fff12b71a178b968730561c64afc2e8e752535442e"

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
