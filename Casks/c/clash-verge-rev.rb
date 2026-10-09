cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.8"
  sha256 arm:   "1f7c3a73970f103fc3cb9944744772fa1540160f05911e033ffc57f7c9f860ec",
         intel: "8cdf7a01a1c548a081339aff21b2599d60f67730d05485e90831f4bbdbf3b093"

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
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
