cask "sc-menu" do
  version "2.1"
  sha256 "13318245268a2ecc10a64d2fea561807e9f5bef69bf3e66b85ab44ef3157bbda"

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
