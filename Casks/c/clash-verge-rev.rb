cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.7"
  sha256 arm:   "b4967eeefccc9688c100810fdfefa99147030c23949d1f278d5a5536aa86abf3",
         intel: "89b32dd2aec2bccad52507ccc994cbdf67335a29de6ff794ebe844eb7c387792"

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
