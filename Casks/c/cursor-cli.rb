cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.08.08-f57cb59"
  sha256 arm:   "8ead37ee1e7205f2887310d12ec000956159dd653e7f0c93c51324362b6087f7",
         intel: "7373847d6fbe0cfb989c2e1fae7af2b49292bae3ed279cd70b0ffec9e4d86fcc"

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
