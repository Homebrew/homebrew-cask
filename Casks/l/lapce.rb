cask "lapce" do
  version "0.3.0"
  sha256 "6809ae58793a2515e16b86ded1fe02d684aa8cc9a0e9a55d9de413bbec1b4a6f"

  url "https://github.com/lapce/lapce/releases/download/v#{version}/Lapce-macos.dmg",
      verified: "github.com/lapce/lapce/"
  name "Lapce"
  desc "Open source code editor written in Rust"
  homepage "https://lapce.dev/"

  app "Lapce.app"
  binary "#{appdir}/Lapce.app/Contents/MacOS/lapce"

  uninstall quit: "io.lapce"

  zap trash: [
    "~/.lapce",
    "~/Library/Application Support/dev.lapce.Lapce-Stable",
    "~/Library/Application Support/Lapce",
    "~/Library/Saved Application State/io.lapce.savedState",
  ]
end
