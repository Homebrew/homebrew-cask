cask "archivewebpage" do
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.3"
  sha256 arm:          "e58d8b05dc58db6e2f3b1958b7768c33f5fa3702b91853a37e63534a272871cf",
         intel:        "e58d8b05dc58db6e2f3b1958b7768c33f5fa3702b91853a37e63534a272871cf",
         x86_64_linux: "e553470518af48d98aa2473d0df61ee3acd7d4c9f90fea1268803f80852ef36f"

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
      "~/Library/Preferences/net.webrecorder.archivewebpage.plist",
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
