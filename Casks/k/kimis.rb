cask "kimis" do
  version "1.20.180"
  sha256 "c65971af9978af87864fe30a86d73187d4adee9453577cf5e13652f1fe5badc7"

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
