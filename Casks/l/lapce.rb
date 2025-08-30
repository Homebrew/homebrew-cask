cask "lapce" do
  version "0.4.4"
  sha256 "8eacefddb3099c8a6b2c44db5aa5eb4f412b42f9730ac0ba4b86b8bfad09d6b3"

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
