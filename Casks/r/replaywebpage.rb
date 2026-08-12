cask "replaywebpage" do
  version "2.5.0"
  sha256 "c5685229a89bfb643dfce2e5d0abd1c34c7b93b421b4f6de6af33045fa10d624"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/replayweb.page/"
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
