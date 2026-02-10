cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.5"
  sha256 arm:   "994c4e1372fcb507642058b377452aa562c707aa3447893f9df34b60ad9ca614",
         intel: "ba23dd4cca1c3b135801786df909f64a7900590de57db22f556c43f78c7f40e1"

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
