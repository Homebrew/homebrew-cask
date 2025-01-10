cask "archivewebpage" do
  version "0.14.2"
  sha256 "4fa1d96da05bc13f0907a601cd358ad397c7040a655407e68a65f24639b55b5e"

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.dmg",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Archive webpages manually to WARC or WACZ files as you browse the web"
  homepage "https://archiveweb.page/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

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
