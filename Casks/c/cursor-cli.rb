cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.05.28-418efe5"
  sha256 arm:   "f1b184ef08d718b4c367e91bc80ba1f760baddf8465e46e2ef7a8e4f748588f8",
         intel: "f9823cae01f403eee98e3a8f85490b6700167b71c497167ef48a86a684b2b91e"

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
