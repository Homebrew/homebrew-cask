cask "kimis" do
  version "1.21.183"
  sha256 "7146826719ddb2a1142a9106205aaa50c31676db6214f0e90b4f4bfa7c59a512"

  url "https://github.com/Lakr233/Kimis/releases/download/#{version}/Kimis-#{version}.zip"
  name "Kimis"
  desc "Desktop client for Misskey"
  homepage "https://github.com/Lakr233/Kimis"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Kimis.app"

  uninstall quit: "as.wiki.qaq.kimi"

  zap trash: [
    "~/Library/Application Scripts/as.wiki.qaq.kimis",
    "~/Library/Containers/as.wiki.qaq.kimis",
  ]
end
