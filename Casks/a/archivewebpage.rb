cask "archivewebpage" do
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.2"
  sha256 arm:          "f21ac2ed015490af657ddea925c66a36bad289cb1b84f3b942fd37e09ced60bd",
         intel:        "f21ac2ed015490af657ddea925c66a36bad289cb1b84f3b942fd37e09ced60bd",
         x86_64_linux: "fe621b16ca8a1b715a6e93ba21beadcbfeaa7a461e882466a68053c10979d0e8"

  on_macos do
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
    depends_on arch: :x86_64

    app_image "ArchiveWeb.page-#{version}.AppImage", target: "ArchiveWeb.page.AppImage"

    zap trash: [
      "~/.cache/@webrecorderarchivewebpage-updater",
      "~/.config/ArchiveWeb.page",
      "~/.config/archivewebpage",
    ]
  end

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.#{url_end}"
  name "ArchiveWeb.page"
  desc "Archive webpages manually to WARC or WACZ files as you browse the web"
  homepage "https://archiveweb.page/"
end
