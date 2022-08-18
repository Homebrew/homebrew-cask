cask "jellyfin" do
  version "10.8.4"
  sha256 "cb0f35f9abdbe6c7cdeecc2f2a90ea1a30e28099161b84a6b1e80bd26f266dc5"

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
