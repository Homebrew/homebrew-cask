cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os_end = on_system_conditional macos: "darwin", linux: "linux"

  version "2026.10.01-14929f9"
  sha256 arm:          "778d04e542adc5c8b6760fda3ebe0757f903b1764f2792c232ef9a35e6e2151b",
         intel:        "8930008f9902a4d02d3185c0d34071e0536bac3426439b55bcfd48b78765a3dd",
         arm64_linux:  "c31ef0ba6b827fdf8053919de57abae4a7bd71afefdf2cab061e276faac42b3a",
         x86_64_linux: "ba9a855f8f813c91b9f2707127572d2dc9ae5a62818e1c36719625d0fb8bd452"

  url "https://downloads.cursor.com/lab/#{version}/#{os_end}/#{arch}/agent-cli-package.tar.gz"
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
