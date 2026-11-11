cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.11.11-043ef28"
  sha256 arm:          "9e38944ff2adacab102b6d1d8de5ff9fa1022d52dfc3eddcc1ed44ea74dccad8",
         intel:        "c40eab5bfc907b78ba047017e8075cac0e729cdb9d459d77ec23d3dfeb11e267",
         arm64_linux:  "e8199ea0b184c5985f1c7ecd8b1a43ea85d4e51367b12d0be70ec3d9dd354345",
         x86_64_linux: "5d82bd6e6f090b1804b8284fdc68050f0d588183cafc9d78365379e218ed650c"

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
