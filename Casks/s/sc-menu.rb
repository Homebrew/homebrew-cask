cask "sc-menu" do
  version "1.9"
  sha256 "dd21dcff76d43fde52e60dcce6446e06270137f5d89cf50aced0ee44a32946b3"

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
