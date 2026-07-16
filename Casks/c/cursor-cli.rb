cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.07.13-7fe37d2"
  sha256 arm:   "08ff2008b7ac413bab96b9522ce049d0048642ea4e0dae91509bfe4643ccb571",
         intel: "f3cc8e0d818c65edad8857373be238d00f92b9f3391c5f328eb6ce356fd9763e"

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
