cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "1b128e9116e040a3853aa4213a0c40991632e9d6bbecfb4836707fb946c8060d",
         intel: "0a796f381a6a190478095c2ea3d93ed8a1d04dd464337066603edfa3c7c34a37"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg",
      verified: "github.com/clash-verge-rev/clash-verge-rev/"
  name "Clash Verge Rev"
  desc "Continuation of Clash Verge - A Clash Meta GUI based on Tauri"
  homepage "https://clash-verge-rev.github.io/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Clash Verge.app"

  zap trash: [
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
