cask "archivewebpage" do
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.1"

  on_macos do
    sha256 "244d566e1697e28b7f9520f98ec5bea50f4c0b4baa2d8f5611e0fc6807178fc3"

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
    sha256 "a840308bf35211a3a267436e21665bb58b24ce9f6060379aec4c5fc8e1f76a6c"

    depends_on arch: :x86_64

    app_image "ArchiveWeb.page-#{version}.AppImage", target: "ArchiveWeb.page.AppImage"
  end

  url "https://github.com/webrecorder/archiveweb.page/releases/download/v#{version}/ArchiveWeb.page-#{version}.#{url_end}"
  name "ArchiveWeb.page"
  desc "Archive webpages manually to WARC or WACZ files as you browse the web"
  homepage "https://archiveweb.page/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
