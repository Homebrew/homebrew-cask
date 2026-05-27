cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.05.27-fe9a6e2"
  sha256 arm:   "4f764947f1b86957220ef46989ead1ea95ab32fb60b28dd3154374cbdd334dcd",
         intel: "c80d1eef63be960b7badbabc7d43454d825e37f59a6382780a61540fe9dca994"

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
