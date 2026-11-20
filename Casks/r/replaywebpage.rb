cask "replaywebpage" do
  version "2.5.5"
  sha256 "c962dff44c9a990a10d89876716e7d50f525c2cfba8f350ed783baef5420cd19"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg"
  name "ReplayWeb.page"
  desc "Web archive viewer for WARC and WACZ files"
  homepage "https://replayweb.page/"

  depends_on macos: :monterey

  app "ReplayWeb.page.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.webrecorder.replaywebpage.sfl*",
    "~/Library/Application Support/ReplayWeb.page",
    "~/Library/Logs/ReplayWeb.page",
    "~/Library/Preferences/net.webrecorder.replaywebpage.plist",
    "~/Library/Saved Application State/net.webrecorder.replaywebpage.savedState",
  ]
end
