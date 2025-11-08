cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.3"
  sha256 arm:   "f09c0ef0f24abb46c1268332b9f987108f8aa50a47aacc885d6f89dd845c55f2",
         intel: "0afcdf426fb21970f02c57567d4e01041c90a6e319de13a6a2684f38504fb4f1"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg",
      verified: "github.com/clash-verge-rev/clash-verge-rev/"
  name "Clash Verge Rev"
  desc "Continuation of Clash Verge - A Clash Meta GUI based on Tauri"
  homepage "https://clash-verge-rev.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Clash Verge.app"

  zap trash: [
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
