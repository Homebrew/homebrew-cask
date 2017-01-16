cask 'cineplay' do
  version '1.4.3.0'
  sha256 'cbae6accd954d0a58d9b1c59fd6e512e95ec1a59bd64b08cfb1309e66303968e'

  url "https://www.digitalrebellion.com/download/cineplay?version=#{version.no_dots}"
  name 'CinePlay'
  homepage 'https://www.digitalrebellion.com/cineplay/'

  pkg 'Install CinePlay.pkg'

  uninstall pkgutil: 'com.digitalrebellion.pkg.CinePlay'

  zap delete: '~/Library/Preferences/com.digitalrebellion.CinePlay.plist'
end
