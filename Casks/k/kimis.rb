cask "kimis" do
  version "1.18.166"
  sha256 "6e93e7780744660ed21b35693233300fe9b1b6bad562fa1c76738ca0b07db2ff"

  url "https://github.com/Lakr233/Kimis/releases/download/#{version}/Kimis.zip"
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
