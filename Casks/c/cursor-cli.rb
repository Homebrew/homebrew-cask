cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.08.21-9ba2c98"
  sha256 arm:   "6b8c85bbec292a53c6057de7d2dc189d2010edf8a3374916c3b2cad5b366e73c",
         intel: "ac344e4044d91c631520951125bd8339f5b22b465424eae184539210e91ec68b"

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
