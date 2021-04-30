cask "jellyfin" do
  version "10.7.2"
  sha256 "11e88cb6c2172c848a59064d212c77dc47c13b538f3b9ed9c508f0ee9ee3304f"

  url "https://repo.jellyfin.org/releases/server/macos/stable/installer/Jellyfin_#{version}.dmg"
  name "Jellyfin"
  homepage "https://jellyfin.org/"

  livecheck do
    url "https://repo.jellyfin.org/releases/server/macos/stable/"
    strategy :page_match
    regex(%r{href=.*?/Jellyfin_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Jellyfin.app"
end
