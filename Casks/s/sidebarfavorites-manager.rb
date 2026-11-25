cask "sidebarfavorites-manager" do
  version "1.3.2"
  sha256 "5f1f4c930e183410df855555085831cc722e5a09a55abe51ae84de0d03fcd9c9"

  url "https://github.com/ivg-design/SidebarFavorites/releases/download/v#{version}/SidebarFavorites-#{version}.dmg"
  name "SidebarFavorites Manager"
  desc "Finder sidebar icon customiser"
  homepage "https://github.com/ivg-design/SidebarFavorites"

  depends_on macos: :ventura

  app "SidebarFavorites Manager.app"

  uninstall quit: "com.ivg-design.SidebarFavoritesManager"

  zap trash: [
    "~/Library/Application Scripts/com.ivg-design.SidebarFavorites.*",
    "~/Library/Application Support/SidebarFavorites",
    "~/Library/Caches/com.ivg-design.SidebarFavoritesManager",
    "~/Library/Containers/com.ivg-design.SidebarFavorites.*",
    "~/Library/HTTPStorages/com.ivg-design.SidebarFavoritesManager",
    "~/Library/Preferences/com.ivg-design.SidebarFavoritesManager.plist",
    "~/Library/Saved Application State/com.ivg-design.SidebarFavoritesManager.savedState",
  ]
end
