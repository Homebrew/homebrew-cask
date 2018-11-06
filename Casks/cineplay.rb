cask 'cineplay' do
  version '1.5.4.0'
  sha256 'cf30e898c77cb3ab74247d07fb83c8fd5a71a2e741757934109c55403fac7d2b'

  url "https://www.digitalrebellion.com/download/cineplay?version=#{version.no_dots}"
  name 'CinePlay'
  homepage 'https://www.digitalrebellion.com/cineplay/'

  pkg 'Install CinePlay.pkg'

  uninstall pkgutil: 'com.digitalrebellion.pkg.CinePlay'

  zap trash: '~/Library/Preferences/com.digitalrebellion.CinePlay.plist'
end
