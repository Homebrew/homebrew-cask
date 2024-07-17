cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "1.7.5"
  sha256 arm:   "233082a48421d5ec38cf526c08ef8d276470b9affd43f6ccc3bba50c6f3d7211",
         intel: "d58fac89b42731e73c95d67c36c3e0e2eb4599edc3ac8f62cf8c5d68df68ff33"

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
