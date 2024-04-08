cask "sc-menu" do
  version "1.3"
  sha256 "7d79f053558113cf67cebfde36e5888c048751beb871619daa3450ebb8087265"

  url "https://github.com/boberito/sc_menu/releases/download/#{version}/SC_Menu.dmg"
  name "SC Menu"
  desc "Simple smartcard menu item"
  homepage "https://github.com/boberito/sc_menu"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: ">= :ventura"

  app "SC Menu.app"

  zap trash: [
    "~/Library/Application Scripts/com.ttinc.sc-menu",
    "~/Library/Containers/com.ttinc.sc-menu",
  ]
end
