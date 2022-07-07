cask "jellyfin" do
  version "10.8.1"
  sha256 "2925a45f529f6646b4d09b50bfccb30816cc60f74d5919a19d4f8dd655219158"

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
