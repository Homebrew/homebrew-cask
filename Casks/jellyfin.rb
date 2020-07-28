cask "jellyfin" do
  version "10.6.1"
  sha256 "0d7b562f0b799302db417a9ab5eb2bf07fdc8ca19b28649798ebcf266c949c1e"

  url "https://repo.jellyfin.org/releases/server/macos/stable/combined/Jellyfin_#{version}.dmg"
  appcast "https://repo.jellyfin.org/releases/server/macos/stable/"
  name "Jellyfin"
  homepage "https://jellyfin.org/"

  app "Jellyfin.app"
end
