cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.05.09-0afadcc"
  sha256 arm:   "86dccaf8f024887ecbd6d423afbc8ad0f93ef24017912486eed3c8998322d286",
         intel: "f4c07eb455be672bea45abbf5d50a3875ce6b3d926c89ce5cea0de309ed4b68b"

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
