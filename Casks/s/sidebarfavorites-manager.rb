cask "sidebarfavorites-manager" do
  version "1.3.0"
  sha256 "dc50e55f4d9d59d6b4407f4cdb98582faf43b220695d6a3e27d73a26d002dedf"

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
