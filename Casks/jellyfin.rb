cask "jellyfin" do
  version "10.6.3"
  sha256 "66e55f9112b0d4c38128baafd7fa56919bd80a0314bb953f557b5297c7d4c95a"

  url "https://repo.jellyfin.org/releases/server/macos/stable/installer/Jellyfin_#{version}.dmg"
  appcast "https://repo.jellyfin.org/releases/server/macos/stable/"
  name "Jellyfin"
  homepage "https://jellyfin.org/"

  app "Jellyfin.app"
end
