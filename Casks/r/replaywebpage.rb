cask "replaywebpage" do
  version "2.5.2"
  sha256 "0a6c3d0214e7d160e7cfe2080140bd694ef36bbfcc5aa2201d101a6ad81b6cb3"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg"
  name "ReplayWeb.page"
  desc "Web archive viewer for WARC and WACZ files"
  homepage "https://replayweb.page/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "ReplayWeb.page.app"

  zap trash: [
    "~/Library/Application Support/ReplayWeb.page",
    "~/Library/Logs/ReplayWeb.page",
    "~/Library/Preferences/net.webrecorder.replaywebpage.plst",
    "~/Library/Saved Application State/net.webrecorder.replaywebpage.savedState",
  ]
end
