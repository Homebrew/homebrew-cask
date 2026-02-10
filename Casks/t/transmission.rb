cask "transmission" do
  version "4.1.0"
  sha256 "dcade005ef4c35ed083e226bd0061e805ed6ef8be22b63c57ec8c72541587578"

  url "https://github.com/transmission/transmission/releases/download/#{version}/Transmission-#{version}.dmg",
      verified: "github.com/transmission/transmission/"
  name "Transmission"
  desc "Open-source BitTorrent client"
  homepage "https://transmissionbt.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: [
    "transmission@beta",
    "transmission@nightly",
  ]
  depends_on macos: ">= :big_sur"

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
