cask "kimis" do
  version "1.22.184"
  sha256 "5f033d41695e61a214fe21754432fa27a7c3d1ae44a9a809a9071f0bdbadbed3"

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
