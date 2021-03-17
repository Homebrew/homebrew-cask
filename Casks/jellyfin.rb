cask "jellyfin" do
  version "10.7.0"
  sha256 "0e0c32ccdf7df3e0308c26c30b3f9738dba01038b97466c4f6282a2a68b1e473"

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
