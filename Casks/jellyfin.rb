cask "jellyfin" do
  version "10.7.1"
  sha256 "661b8882a04d68210c8eb327a550d9dbb340ea40a235908e8822c10c20cb5064"

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
