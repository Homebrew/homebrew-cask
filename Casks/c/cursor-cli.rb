cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.04.17-787b533"
  sha256 arm:   "039e3248cacb6f6dbcdcb19baffac1532095682336c5708a716514a4249521c2",
         intel: "ee7821694529a5740ebdece5f4d5ad155dd298dee0396ebd7457359915bdd579"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:\.\d+)+(?:[._-]\h+)?)/}i)
  end

  depends_on :macos

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
