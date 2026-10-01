cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"

  version "2026.10.01-14929f9"
  sha256 arm:   "778d04e542adc5c8b6760fda3ebe0757f903b1764f2792c232ef9a35e6e2151b",
         intel: "8930008f9902a4d02d3185c0d34071e0536bac3426439b55bcfd48b78765a3dd"

  url "https://downloads.cursor.com/lab/#{version}/darwin/#{arch}/agent-cli-package.tar.gz"
  name "Cursor CLI"
  desc "Command-line agent for Cursor"
  homepage "https://cursor.com/"

  livecheck do
    url "https://cursor.com/install"
    regex(%r{downloads\.cursor\.com/lab/v?(\d+(?:[.-]\d+)+(?:[._-]\h+)?)/}i)
  end

  depends_on :macos

  binary "#{staged_path}/dist-package/cursor-agent", target: "cursor-agent"

  zap trash: [
    "~/.config/cursor-agent",
    "~/.local/share/cursor-agent",
    "~/Library/Logs/CursorAgent",
  ]
end
