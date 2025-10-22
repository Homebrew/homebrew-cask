cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.22-f894c20"
  sha256 arm:   "d7cbb92bfe0c73df91df6ba6681583e5c8603286ad91dfd948c0a23c49663c95",
         intel: "5044321c4a2934a7f9b83525655cd31125d58bc7b6c07a7cddc0f4d5d8802126"

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
