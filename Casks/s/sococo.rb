cask "sococo" do
  version "6.12.2"
  sha256 :no_check

  url "https://s.sococo.com/rs/client/mac/sococo-client-mac.dmg"
  name "Sococo"
  desc "Online workplace client"
  homepage "https://app.sococo.com/a/download"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :el_capitan"

  app "Sococo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.sococo.sfl*",
    "~/Library/Application Support/Sococo_RS",
    "~/Library/Caches/*sococo",
    "~/Library/Caches/com.electron.sococo.ShipIt",
    "~/Library/Caches/Support/Sococo_R",
    "~/Library/HTTPStorages/com.electron.sococo",
    "~/Library/Preferences/com.electron.sococo.plist",
    "~/Library/Saved Application State/com.electron.sococo.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
