cask 'avast' do
  version :latest
  sha256 :no_check

  url 'http://download.ff.avast.com/mac/avast_free_mac_security.dmg'
  name 'Avast Mac Security'
  homepage 'https://www.avast.com/'
  license :commercial

  pkg 'Avast Mac Security.pkg'

  uninstall script: '/Library/Application Support/Avast/hub/uninstall.sh'

  zap delete: '~/Library/Preferences/com.avast.avast!.plist'
end
