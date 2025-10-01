cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.01-369e3d0"
  sha256 arm:   "3bb243c846413b9fc540d33750c908165ab5404c95d35be5ffcaaa373663c0d1",
         intel: "635a02ef6101f46db57b4e21b2536c2d5e7d4841be91da6b415ed59c8916811e"

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
