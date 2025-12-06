cask "archivewebpage" do
  version "0.16.0"
  sha256 "752f9880793bd82fd93b873bfa448d4e785dae2057db476605b27afcd04afe60"

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Archive webpages manually to WARC or WACZ files as you browse the web"
  homepage "https://archiveweb.page/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "ArchiveWeb.page.app"

  zap trash: [
    "~/Library/Application Support/ArchiveWeb.page",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.webrecorder.archivewebpage.sfl*",
    "~/Library/Caches/net.webrecorder.archivewebpage",
    "~/Library/Caches/net.webrecorder.archivewebpage.ShipIt",
    "~/Library/HTTPStorages/net.webrecorder.archivewebpage",
    "~/Library/Logs/ArchiveWeb.page",
    "~/Library/Preferences/net.webrecorder.archivewebpage.plst",
    "~/Library/Saved Application State/net.webrecorder.archivewebpage.savedState",
  ]
end
