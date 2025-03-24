cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.1"
  sha256 arm:   "6bff260c5bb0ecb7398d940e74a93d24aa4b23674f114bfcc99ff040ac9724c5",
         intel: "73182533c7d477be9913f37a59db68223aea9ab385856a2a0f91edc6ee61b49c"

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
  depends_on macos: ">= :catalina"

  app "Clash Verge.app"

  zap trash: [
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
