cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.1"
  sha256 arm:   "a2016a77922b67ac058b6c247aad7809893b429f238ee7aeee1fee6e3bf70e2b",
         intel: "bbe4894d80383510f4307e18d0bc6dfd89ccde4a8a82f3d6280989a902e5b04a"

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
  depends_on macos: :big_sur

  app "Clash Verge.app"

  zap trash: [
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
