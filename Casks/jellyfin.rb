cask "jellyfin" do
  version "10.6.4"
  sha256 "0ddfda5c16930202adc719cce89703ee5c27c2490fb36b59fe513188245ccffa"

  url "https://repo.jellyfin.org/releases/server/macos/stable/installer/Jellyfin_#{version}.dmg"
  appcast "https://repo.jellyfin.org/releases/server/macos/stable/"
  name "Jellyfin"
  homepage "https://jellyfin.org/"

  app "Jellyfin.app"
end
