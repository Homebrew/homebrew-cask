cask "sc-menu" do
  version "2.2"
  sha256 "482341d649c72d13c8ee266456325e74e498bc848c7f6af03609549d022aaff3"

  url "https://github.com/boberito/sc_menu/releases/download/#{version}/SC_Menu.dmg"
  name "SC Menu"
  desc "Simple smartcard menu item"
  homepage "https://github.com/boberito/sc_menu"

  depends_on macos: :sonoma

  app "SC Menu.app"

  uninstall quit: "com.ttinc.sc-menu"

  zap trash: [
    "~/Library/Application Scripts/com.bob.sc-menu",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bob.sc-menu.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.ttinc.sc-menu.sfl*",
    "~/Library/Containers/com.bob.sc-menu",
  ]
end
