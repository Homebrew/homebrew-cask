cask "sidebarfavorites" do
  version "1.0.0"
  sha256 "41a96dc65295a2542e14ed7b83d06a4cafa3e6d679e6e37b2a84fb1fc13a23ec"

  url "https://github.com/ivg-design/SidebarFavorites/releases/download/v#{version}/SidebarFavorites-#{version}.dmg"
  name "SidebarFavorites Manager"
  desc "Adds custom icons to folders in Finder's sidebar"
  homepage "https://github.com/ivg-design/SidebarFavorites"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "SidebarFavorites Manager.app"

  uninstall quit: "com.ivg-design.SidebarFavoritesManager"

  zap trash: [
    "~/Library/Application Support/SidebarFavorites",
    "~/Library/Preferences/com.ivg-design.SidebarFavoritesManager.plist",
    "~/Library/Saved Application State/com.ivg-design.SidebarFavoritesManager.savedState",
  ]
end
