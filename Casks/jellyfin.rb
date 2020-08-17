cask "jellyfin" do
  version "10.6.2"
  sha256 "5553490ef591114102de0dd8c5305685bb0d07cb2e28419d83760d116cc17aaa"

  url "https://repo.jellyfin.org/releases/server/macos/stable/installer/Jellyfin_#{version}.dmg"
  appcast "https://repo.jellyfin.org/releases/server/macos/stable/"
  name "Jellyfin"
  homepage "https://jellyfin.org/"

  app "Jellyfin.app"
end
