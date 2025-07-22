cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.3.2"
  sha256 arm:   "5a11e6a3b3a4dc2aa0fb68b153af735537c2c09a2f73958c0358db4ad2b0d7a8",
         intel: "1ffd35719717bd2e797e2bf4aff8149d8647fc5330dc17deac83e084e9d25fc7"

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
