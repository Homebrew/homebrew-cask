cask "jellyfin" do
  version "10.7.6"
  sha256 "74747c3828fc316b7cd36d86aa1bc2bdfe6c13bc7cb150095d902c95087258c9"

  url "https://repo.jellyfin.org/releases/server/macos/stable/installer/Jellyfin_#{version}.dmg"
  name "Jellyfin"
  desc "Media system"
  homepage "https://jellyfin.org/"

  livecheck do
    url "https://repo.jellyfin.org/releases/server/macos/stable/"
    regex(%r{href=.*?/Jellyfin_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Jellyfin.app"
end
