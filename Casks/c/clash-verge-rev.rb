cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.9"
  sha256 arm:   "3c487df30546bcbee58363edda2df0c22f9900a7c04807fb8c3945a8d77d1436",
         intel: "2adfe473699068240c9855066b61207c362f5a3a64f91a0b79942664bdbd5ce6"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg"
  name "Clash Verge Rev"
  desc "Continuation of Clash Verge - A Clash Meta GUI based on Tauri"
  homepage "https://clash-verge-rev.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Clash Verge.app"

  uninstall quit: "io.github.clash-verge-rev.clash-verge-rev"

  zap trash: [
    "~/Library/Application Scripts/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Group Containers/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
