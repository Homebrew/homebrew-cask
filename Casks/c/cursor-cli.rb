cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.09.04-fc40cd1"
  sha256 arm:   "0b66afe1fa21f177178be098cc5133ea3785211eec4e36458b57e4dacd08e3a2",
         intel: "cb3bb411ae7f5f7f111b2685c74551d4ed9a5f35acfd71e8a43c90ce8b855cff"

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
