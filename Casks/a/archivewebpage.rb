cask "archivewebpage" do
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.2"

  on_macos do
    sha256 "ef89d66154e4843d7a1fe6f359e661029407607446dc77ef82725da0100be603"

    depends_on macos: :monterey

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
  on_linux do
    sha256 "25a1b0a16181b7d333eb37247ece8e825852dbda0761863d61e381e0830a90fa"

    depends_on arch: :x86_64

    app_image "ArchiveWeb.page-#{version}.AppImage", target: "ArchiveWeb.page.AppImage"
  end

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.#{url_end}",
      verified: "github.com/webrecorder/archiveweb.page/"
  name "ArchiveWeb.page"
  desc "Archive webpages manually to WARC or WACZ files as you browse the web"
  homepage "https://archiveweb.page/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
