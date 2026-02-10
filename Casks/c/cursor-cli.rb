cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.01.28-fd13201"
  sha256 arm:   "4799047ddf3821a517b8df8f233a460f53463f30fac7133d3405c002de9dd0df",
         intel: "1b6dcb0bb4a5d468df6840a7752bb20b11cae1dae424a1b70755369394801c90"

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
