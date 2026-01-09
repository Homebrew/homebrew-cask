cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.01.09-231024f"
  sha256 arm:   "c0e3ef8483a483c350721e462dee496cad97976bd36e85423cf31af9a315f8c2",
         intel: "9185d369d7634e4bb3fadcd6247538064f348c00536d075528b8c42af481817f"

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
