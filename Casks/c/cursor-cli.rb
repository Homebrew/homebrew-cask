cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.11.10-731fb78"
  sha256 arm:          "ad92a8c07ea17778ec7d20fd8736e1334b895fa48cbe9c8b82c29a989c39b14a",
         intel:        "7b60379fbb06970b602f16a636b0d8eaf88fcc2e397672b0498f3f1de719183c",
         arm64_linux:  "5f211675d0e64e6a2f23e7c9bcb518a15855b924837145b5d2b414dc1c6dbf84",
         x86_64_linux: "f39e124227aa179ae16ac0785e293cbe29218b2d1c167ba7adf68bfc8c3812a9"

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
