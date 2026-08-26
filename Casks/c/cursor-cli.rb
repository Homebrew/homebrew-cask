cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.08.25-3e8eec8"
  sha256 arm:   "81d4de7349e208d4ce441ca9c2d4e7d019ec2fbeb1137a79099fd8c4b8662f5f",
         intel: "851f5412f603cff4cb37d4d87d5a940c5e642077c0459238398c866a69d3f495"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:[.-]\d+)+(?:[._-]\h+)?)/}i)
  end

  depends_on :macos

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
