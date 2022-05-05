cask "lapce" do
  version "0.0.12"
  sha256 "852d58f2aa8a808e0f163d85e60e754246103a80eca8e367349f571122eb1731"

  url "https://github.com/lapce/lapce/releases/download/v#{version}/Lapce-macos.dmg",
      verified: "github.com/lapce/lapce/"
  name "Lapce"
  desc "Open source code editor written in Rust"
  homepage "https://lapce.dev/"

  app "Lapce.app"

  uninstall quit: "io.lapce"

  zap trash: [
    "~/Library/Application Support/Lapce",
    "~/Library/Saved Application State/io.lapce.savedState",
  ]
end
