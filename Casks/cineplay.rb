cask 'cineplay' do
  version '1.3.1.0'
  sha256 'f17cc9259dbdb907152d0e6fb0b996a67216b7a39ba3f7095ed74a65a681454e'

  url "https://www.digitalrebellion.com/download/cineplay?version=#{version.no_dots}"
  name 'CinePlay'
  homepage 'https://www.digitalrebellion.com/cineplay/'

  pkg 'Install CinePlay.pkg'

  uninstall pkgutil: 'com.digitalrebellion.pkg.CinePlay'

  zap delete: '~/Library/Preferences/com.digitalrebellion.CinePlay.plist'
end
