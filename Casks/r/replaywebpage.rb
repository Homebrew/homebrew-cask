cask "replaywebpage" do
  version "2.5.6"
  sha256 "2f7b3e94aad204c73f55e526c16b276a176d945061ed05c37bd9ae6aed27164b"

  url "https://github.com/webrecorder/replayweb.page/releases/download/v#{version}/ReplayWeb.page-#{version}.dmg"
  name "ReplayWeb.page"
  desc "Web archive viewer for WARC and WACZ files"
  homepage "https://replayweb.page/"

  depends_on macos: :ventura

  app "ReplayWeb.page.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.webrecorder.replaywebpage.sfl*",
    "~/Library/Application Support/ReplayWeb.page",
    "~/Library/Logs/ReplayWeb.page",
    "~/Library/Preferences/net.webrecorder.replaywebpage.plist",
    "~/Library/Saved Application State/net.webrecorder.replaywebpage.savedState",
  ]
end
