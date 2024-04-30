cask "transmission@nightly" do
  version :latest
  sha256 :no_check

  url "https://build.transmissionbt.com/job/trunk-mac/lastSuccessfulBuild/artifact/release/" do |page|
    file_path = page[/href="([^"]+.dmg)"/, 1]
    URI.join(page.url, file_path)
  end
  name "Transmission"
  desc "Open-source BitTorrent client"
  homepage "https://transmissionbt.com/"

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "transmission"
  depends_on macos: ">= :mojave"

  app "Transmission.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.m0k.transmission.sfl*",
    "~/Library/Application Support/Transmission",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/org.m0k.transmission.help",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Transmission Help*",
    "~/Library/Caches/org.m0k.transmission",
    "~/Library/Cookies/org.m0k.transmission.binarycookies",
    "~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist",
    "~/Library/Preferences/org.m0k.transmission.plist",
    "~/Library/Saved Application State/org.m0k.transmission.savedState",
  ]
end
