cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.09.18-39624ef"
  sha256 arm:   "2f1b8433344e89fd0b3b56e34b6d37941f1005a5e755d9871cdf88dd45e5e7bf",
         intel: "edc5b6f7e8cb7dc9beb71d44988788f855995cef0be14740ac9ef0be63120a83"

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
