cask "transmission" do
  version "4.0.5"
  sha256 "6a0e6838cb247ab1ed1390ef65368b82fc74b4e72cb0e291991f26c221436bc3"

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
  conflicts_with cask: "homebrew/cask-versions/transmission-nightly"

  app "Transmission.app"

  zap trash: [
    "~/Library/Application Support/Transmission",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.m0k.transmission.sfl*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Transmission Help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/org.m0k.transmission.help",
    "~/Library/Caches/org.m0k.transmission",
    "~/Library/Cookies/org.m0k.transmission.binarycookies",
    "~/Library/Preferences/org.m0k.transmission.LSSharedFileList.plist",
    "~/Library/Preferences/org.m0k.transmission.plist",
    "~/Library/Saved Application State/org.m0k.transmission.savedState",
  ]
end
