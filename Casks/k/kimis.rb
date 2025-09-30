cask "kimis" do
  version "1.18.167"
  sha256 "a76c3605e45df17d55a65c69eab6a8cc05b0941772c703d3789826b90d2b74e0"

  url "https://github.com/Lakr233/Kimis/releases/download/#{version}/Kimis-v#{version}.zip"
  name "Kimis"
  desc "Desktop client for Misskey"
  homepage "https://github.com/Lakr233/Kimis"

  depends_on macos: ">= :big_sur"

  app "Kimis.app"

  uninstall quit: "as.wiki.qaq.kimi"

  zap trash: [
    "~/Library/Application Scripts/as.wiki.qaq.kimis",
    "~/Library/Containers/as.wiki.qaq.kimis",
  ]
end
