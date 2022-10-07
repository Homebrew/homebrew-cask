cask "folx" do
  version "5.27,13991"
  sha256 :no_check

  url "https://cdn.eltima.com/download/downloader_mac.dmg"
  name "Folx"
  desc "Download manager with a torrent client"
  homepage "https://mac.eltima.com/download-manager.html"

  livecheck do
    url "https://cdn.eltima.com/download/folx-updater/folx.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Folx.app"

  zap trash: [
    "~/Library/Application Support/Eltima Software/Folx3",
    "~/Library/Caches/com.eltima.Folx3",
    "~/Library/Internet Plug-Ins/Folx3Plugin.plugin",
    "~/Library/Logs/Folx.log",
    "~/Library/Logs/Folx3.log",
    "~/Library/Preferences/com.eltima.Folx3.plist",
    "~/Library/Preferences/com.eltima.FolxAgent.plist",
    "~/Library/Saved Application State/com.eltima.Folx3.savedState",
  ]
end
