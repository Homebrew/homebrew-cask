cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.7"
  sha256 arm:   "9d9484d897937a0a03bbe72af88af45d3cfc20ac58244aed7d9039d4be6d9256",
         intel: "23937b9d11e7887281a1a052dbdcb5fc24a42179d0f5684b6186a0a55fa1a6dd"

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
