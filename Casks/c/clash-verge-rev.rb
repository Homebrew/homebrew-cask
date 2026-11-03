cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.5.10"
  sha256 arm:   "40d4a7da4543d75f573a5cfcc31543b0b4bf7e02caa122a9ca50654859585839",
         intel: "b1d6938680f3e411b5961e56591faaa92c95e9676f54ebfdfa98b7eab374023e"

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
    "~/Library/Application Scripts/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Group Containers/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
