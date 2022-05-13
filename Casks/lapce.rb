cask "lapce" do
  version "0.1.0"
  sha256 "5b9d43218a4e0e1df59de07c2aaea67674a06a7af47fc80aa24a01775f6bbc66"

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
