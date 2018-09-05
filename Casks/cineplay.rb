cask 'cineplay' do
  version '1.4.4.0'
  sha256 'af60214ccfa13df1862ae88377ae150e49ccfc9b647f7af3b455447ee7e34ef7'

  url "https://www.digitalrebellion.com/download/cineplay?version=#{version.no_dots}"
  name 'CinePlay'
  homepage 'https://www.digitalrebellion.com/cineplay/'

  pkg 'Install CinePlay.pkg'

  uninstall pkgutil: 'com.digitalrebellion.pkg.CinePlay'

  zap trash: '~/Library/Preferences/com.digitalrebellion.CinePlay.plist'
end
