cask 'jellyfin' do
  version '10.5.5b'
  sha256 'e60ebbda1998a2f1daebdb33a46b4b1076696cec01f5b33c974342a8f75bed27'

  url "https://repo.jellyfin.org/releases/server/macos/stable/Jellyfin_#{version}.dmg"
  appcast 'https://repo.jellyfin.org/releases/server/macos/stable/README_FIRST.txt'
  name 'Jellyfin'
  homepage 'https://jellyfin.org/'

  app 'Jellyfin.app'
end
