cask 'integrity' do
  version '8.1.02'
  sha256 'b3dc7130f0262c028bb932cd9542ec27545886b8053170f2b56b3dce7794fbbd'

  # peacockmedia.co.uk/integrity was verified as official when first introduced to the cask
  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  appcast 'http://peacockmedia.software/mac/integrity/version_history.html'
  name 'Integrity'
  homepage 'http://peacockmedia.software/mac/integrity/'

  app 'Integrity.app'

  zap trash: [
               '~/Library/Application Support/Integrity',
               '~/Library/Caches/com.peacockmedia.integrity',
               '~/Library/Cookies/com.peacockmedia.integrity.binarycookies',
               '~/Library/Preferences/com.peacockmedia.integrity.plist',
             ]
end
