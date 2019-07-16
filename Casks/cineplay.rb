cask 'cineplay' do
  version '1.5.7.0'
  sha256 'c31ad583b20b6a1589cd739b89dff026618a9f5e9ed3b908f0efb6c1d616e27e'

  url "https://www.digitalrebellion.com/download/cineplay?version=#{version.no_dots}"
  appcast 'https://www.digitalrebellion.com/cineplay/download',
          configuration: version.no_dots
  name 'CinePlay'
  homepage 'https://www.digitalrebellion.com/cineplay/'

  pkg 'Install CinePlay.pkg'

  uninstall pkgutil: 'com.digitalrebellion.pkg.CinePlay'

  zap trash: '~/Library/Preferences/com.digitalrebellion.CinePlay.plist'
end
