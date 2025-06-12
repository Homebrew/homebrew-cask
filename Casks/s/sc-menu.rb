cask "sc-menu" do
  version "1.8.1"
  sha256 "acdf2ba19bb1adc4cacc36554c1d18aa9591f3d4e7b22f437b094e88dfc84855"

  url "https://github.com/boberito/sc_menu/releases/download/#{version}/SC_Menu.dmg"
  name "SC Menu"
  desc "Simple smartcard menu item"
  homepage "https://github.com/boberito/sc_menu"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :ventura"

  app "SC Menu.app"

  zap trash: [
    "~/Library/Application Scripts/com.bob.sc-menu",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bob.sc-menu.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ttinc.sc-menu.sfl*",
    "~/Library/Containers/com.bob.sc-menu",
  ]
end
