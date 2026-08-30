cask "archivewebpage" do
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.0"

  on_macos do
    sha256 "9d18520a0cd559e388876c12333489fa925cf09b8cfc47bb4a2170083ddb26b6"

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
    sha256 "3c6f5a1358eaa233bd8cfaf41750987cb005812beab783cc8016ffb5abf53e25"

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
