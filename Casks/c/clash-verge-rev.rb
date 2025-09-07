cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.2"
  sha256 arm:   "57b08e9f254bb1a35c1c7afc88af57d9add96a952b15abd0c7dc9c62b1288e66",
         intel: "1a4ea5ef2ba36bdffac08d4a3831f260fd951bb628504cfdc1528daf2fe43c91"

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
