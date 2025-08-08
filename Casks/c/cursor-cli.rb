cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2025.08.08-f57cb59"
  sha256 arm:   "bc06b2336c7bb55c1a5037cbec15cb64605beb87a90053fb261ade4f33181c30",
         intel: "07a2b0724ca4767eabc647148efc415bd40b0cd0fddc06258a881bb2728b1857"

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
