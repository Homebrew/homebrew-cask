cask "replaywebpage" do
  version "2.3.8"
  sha256 "5e4e97cc79beeb74b42925634b9ff13244204938341a89701ea7593aacaccd51"

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
