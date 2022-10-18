cask "jellyfin" do
  version "10.8.5"
  sha256 "2d486580d01773bf71192d47d14726ccb51a1da55029fd6a44ef9c7ef09b88fa"

  url "https://repo.jellyfin.org/releases/server/macos/stable/installer/jellyfin_#{version}.dmg"
  name "Jellyfin"
  desc "Media system"
  homepage "https://jellyfin.org/"

  livecheck do
    url "https://repo.jellyfin.org/releases/server/macos/stable/"
    regex(%r{href=.*?/Jellyfin_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Jellyfin.app"
end
