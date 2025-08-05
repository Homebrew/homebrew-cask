cask "lapce" do
  version "0.4.3"
  sha256 "f4eb6fd004dc85b8aed667663e559265d7c2a9967f1b818c6f1c325b1186c2ce"

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
