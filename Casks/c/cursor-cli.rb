cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.10.14-0f9edde"
  sha256 arm:          "efc39839ee3bc0b05467cd6e4baf23a43e358dae61d11512d9c5bf4ebbb3217b",
         intel:        "19ae62bcf51ac7909c3f422c140832810c8dce80320c1bc8cf922435b0f4b2ae",
         arm64_linux:  "28028e8adb8266c8b7c00d11950765fbf9a3b9cac77a98b7c92b172646b35f4b",
         x86_64_linux: "74fac931fe3578980d070701872b7dab54eb87a9abf9b6e2e6be19beeb9167a7"

  url "https://downloads.cursor.com/lab/#{version}/#{os}/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:[.-]\d+)+(?:[._-]\h+)?)/}i)
  end

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
