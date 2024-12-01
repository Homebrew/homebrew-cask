cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.0.2"
  sha256 arm:   "efa6294c625bd9dd19cf8b744df0fcf49b8eb1a8655bb0e53e7cea9bb0f4e10b",
         intel: "b7e8152d082c780f9ed2e428b21de2908ab9050eeb3b46f8f787fbbd602a5f14"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg",
      verified: "github.com/clash-verge-rev/clash-verge-rev/"
  name "Clash Verge Rev"
  desc "Continuation of Clash Verge - A Clash Meta GUI based on Tauri"
  homepage "https://clash-verge-rev.github.io/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Clash Verge.app"

  zap trash: [
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
