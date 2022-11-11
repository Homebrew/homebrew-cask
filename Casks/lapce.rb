cask "lapce" do
  version "0.2.3"
  sha256 "8dae216fdeff3f9967d93c13847e9b012df69c6f77985f9f01b67d00b684000e"

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
    "~/Library/Application Support/Lapce",
    "~/Library/Saved Application State/io.lapce.savedState",
  ]
end
