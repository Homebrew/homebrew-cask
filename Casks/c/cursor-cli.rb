cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.04.13-a9d7fb5"
  sha256 arm:   "2dca7ce2c3ba26bb9239b3491001f5bb15cdc069ca60668c34e3155362e77cc6",
         intel: "43816bb32b6a1a179ec1762f0746d3c800d6fec71bf76867a03b4e7b7ef2765c"

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
