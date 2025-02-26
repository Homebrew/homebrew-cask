cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.0"
  sha256 arm:   "c1a612b299ca2c3105f7137b2f72803c2fb1c899fb333cf2b61612619d2858aa",
         intel: "2df57e3f31f811f2fcf90d2ac9bb549af267c6c84e5112af682224624e2aabe1"

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
