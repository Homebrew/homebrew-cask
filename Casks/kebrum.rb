cask 'kebrum' do
  version :latest
  sha256 :no_check

  url 'http://archive.kebrum.com/MkII/Kebrum.dmg'
  name 'Kebrum'
  homepage 'https://kebrum.com/'

  pkg 'Kebrum.pkg'

  uninstall pkgutil: 'com.kebrum.vpn',
            quit:    'com.kebrum.vpn',
            delete:  '/Applications/Kebrum.app'

  zap delete: '~/Library/Saved Application State/com.kebrum.vpn.savedState'
end
