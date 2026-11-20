cask "cursor-cli" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2026.11.19-f005e9d"
  sha256 arm:          "16bb33c59733725b466d31f988490de332747f0910d2d64b393c363e510e6c7d",
         intel:        "0cac2e918bdf9a0ff1a38700929bb3164730354a347dd6b373fe48a83814b236",
         arm64_linux:  "5ff05be0d7c0b7754574dbcd677c35254a3ff190ed6457e71bbee0f276237e29",
         x86_64_linux: "a25986eaf0c9330aeeec599a139711cb9f267c64562d073a72b751edf5161695"

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
