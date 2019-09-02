cask 'cineplay' do
  version '1.6.0.0'
  sha256 'd460eaa7a46b95775a78da465f882858c05ed4296863ea12505c784830f67ae0'

  url "https://www.digitalrebellion.com/download/cineplay?version=#{version.no_dots}"
  appcast 'https://www.digitalrebellion.com/cineplay/download',
          configuration: version.no_dots
  name 'CinePlay'
  homepage 'https://www.digitalrebellion.com/cineplay/'

  pkg 'Install CinePlay.pkg'

  uninstall pkgutil: 'com.digitalrebellion.pkg.CinePlay'

  zap trash: '~/Library/Preferences/com.digitalrebellion.CinePlay.plist'
end
