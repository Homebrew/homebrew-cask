cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.08.15-dbc8d73"
  sha256 arm:   "e5c5b2a0a0715bad90a9c02e91c7b96785c0fad70dbe861702c2aac978f1201f",
         intel: "24dddb99177adf6e445aaac338999cec7d73e5c687d4cb5621d700f42183129f"

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
