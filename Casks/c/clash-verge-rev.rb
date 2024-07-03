cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "1.7.1"
  sha256 arm:   "51b87ec50870fee321e3bc612ee2df7fb981bf741455cc9e1a2e3b223527a0dc",
         intel: "8502c3b0b05bed43c102d7699ba602261b206b36cf1037a3b6e93c29854cdb2e"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg",
      verified: "github.com/clash-verge-rev/clash-verge-rev/"
  name "Clash Verge Rev"
  desc "Continuation of Clash Verge - A Clash Meta GUI based on Tauri"
  homepage "https://clash-verge-rev.github.io/"

  depends_on macos: ">= :catalina"

  app "Clash Verge.app"

  zap trash: [
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
