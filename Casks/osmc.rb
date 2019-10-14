cask 'osmc' do
  version :latest
  sha256 :no_check

  url 'http://download.osmc.tv/installers/osmc-installer.dmg'
  name 'OSMC'
  homepage 'https://osmc.tv/'

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/9420
  app 'qt_host_installer.app', target: 'OSMC.app'
end
