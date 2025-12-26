cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "9.2.1"
  sha256 arm:   "e7422f1d0350be547eb5f72145d44becc290d6bfbf80747ac70f09fab2314f57",
         intel: "617626aeb620f897f57372d8a3e7d611f45ac009a2d627d9506ec27b73bf5194"

  url "https://download.onlyoffice.com/install/desktop/editors/mac/#{arch}/updates/ONLYOFFICE-#{arch}-#{version}.zip"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  # Older items in the Sparkle feed may have a newer pubDate, so it's necessary
  # to work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://download.onlyoffice.com/install/desktop/editors/mac/#{arch}/onlyoffice.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "ONLYOFFICE.app"

  zap trash: [
    "~/Library/Application Support/asc.onlyoffice.ONLYOFFICE",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/asc.onlyoffice.onlyoffice.sfl*",
    "~/Library/HTTPStorages/asc.onlyoffice.ONLYOFFICE",
    "~/Library/Preferences/asc.onlyoffice.editors-helper-renderer.plist",
    "~/Library/Preferences/asc.onlyoffice.ONLYOFFICE.plist",
  ]
end
