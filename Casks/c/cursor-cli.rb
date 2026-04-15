cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.04.14-ee4b43a"
  sha256 arm:   "f2f067d5868d7a94bff57b74a616752663457c1ed1719f5e3a3c55d3c0e59fbd",
         intel: "dbcee6560e0cc3cbb97dca43879657ba13eef886358ab17329db0482e65ff57a"

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
