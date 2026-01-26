cask "sc-menu" do
  version "2.0"
  sha256 "dce4f87c1237d4de0f8c2be691d98800037967d61b6008fec7059ee683e697f1"

  url "https://github.com/boberito/sc_menu/releases/download/#{version}/SC_Menu.dmg"
  name "SC Menu"
  desc "Simple smartcard menu item"
  homepage "https://github.com/boberito/sc_menu"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "SC Menu.app"

  zap trash: [
    "~/Library/Application Scripts/com.bob.sc-menu",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bob.sc-menu.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ttinc.sc-menu.sfl*",
    "~/Library/Containers/com.bob.sc-menu",
  ]
end
