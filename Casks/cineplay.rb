cask 'cineplay' do
  version '1.5.7.0'
  sha256 '831cc5d13ead51c4189fb991c68b3dbb4c86e36d46118014cc5694481b4e8948'

  url "https://www.digitalrebellion.com/download/cineplay?version=#{version.no_dots}"
  appcast 'https://www.digitalrebellion.com/cineplay/download',
          configuration: version.no_dots
  name 'CinePlay'
  homepage 'https://www.digitalrebellion.com/cineplay/'

  pkg 'Install CinePlay.pkg'

  uninstall pkgutil: 'com.digitalrebellion.pkg.CinePlay'

  zap trash: '~/Library/Preferences/com.digitalrebellion.CinePlay.plist'
end
