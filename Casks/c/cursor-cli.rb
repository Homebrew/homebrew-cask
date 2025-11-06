cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.11.06-8fe8a63"
  sha256 arm:   "b79b3d4df2cb03f54b098345f9fb1ff7081f9365bde9e41221b5bf71d50a32e6",
         intel: "51547e8a899d67398f7e3e28e0de057d44826bdb6d26b7bb229b28e707889f59"

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
