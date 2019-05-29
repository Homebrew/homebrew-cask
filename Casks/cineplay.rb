cask 'cineplay' do
  version '1.5.5.1'
  sha256 '34d8ecd90276253fc7ca0e8332f4d6322b294a6f44a6c495ca7292411a02841a'

  url "https://www.digitalrebellion.com/download/cineplay?version=#{version.no_dots}"
  name 'CinePlay'
  homepage 'https://www.digitalrebellion.com/cineplay/'

  pkg 'Install CinePlay.pkg'

  uninstall pkgutil: 'com.digitalrebellion.pkg.CinePlay'

  zap trash: '~/Library/Preferences/com.digitalrebellion.CinePlay.plist'
end
