cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.6"
  sha256 arm:   "565cd085f8d6009edc2c8507c3eccc11574d7d04f73a19753555c5594a45e27a",
         intel: "1909acb3bb8eae97ff8907a04f523ec79800623a498dda6115bee49129c5d9a1"

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
