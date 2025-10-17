cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.10.13-405ee2e"
  sha256 arm:   "829686af410e0293365bf6b7a7f641cfa18138f8afc54537b712cba72a4fddc6",
         intel: "93f814c0975caa88481c2da2d395d6bb7839033ff8bef557dfcb7a631ee50342"

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
