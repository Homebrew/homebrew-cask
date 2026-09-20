cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.4"
  sha256 arm:   "983a6a4eda5f9df1c9485b063b8211c7c75e3719b61fe9981211f61f37027194",
         intel: "c5d59287fc49a922d964b57921ca0bd160249d5e7c1e4236245822de37fb5724"

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

  zap trash: [
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
