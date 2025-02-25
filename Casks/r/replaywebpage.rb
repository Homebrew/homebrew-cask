cask "replaywebpage" do
  version "2.3.0"
  sha256 "8222cb578dfebd607f256b59b46543ed8a03f33410c28f540c3462ed0d45a4ee"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/replayweb.page/"
  name "ReplayWeb.page"
  desc "Web archive viewer for WARC and WACZ files"
  homepage "https://replayweb.page/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "ReplayWeb.page.app"

  zap trash: [
    "~/Library/Application Support/ReplayWeb.page",
    "~/Library/Logs/ReplayWeb.page",
    "~/Library/Preferences/net.webrecorder.replaywebpage.plst",
    "~/Library/Saved Application State/net.webrecorder.replaywebpage.savedState",
  ]
end
