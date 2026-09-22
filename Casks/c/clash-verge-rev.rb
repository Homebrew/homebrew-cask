cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.5"
  sha256 arm:   "67e1da80eee9dcabad5099ec6128bd8db774240ac8196f5921f515964d9b50b1",
         intel: "d312218666b665435055d0d4e7e697a4983542aad2eec633ba69afda2fcf7185"

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
