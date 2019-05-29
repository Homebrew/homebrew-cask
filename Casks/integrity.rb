cask 'integrity' do
  version '8.3.15'
  sha256 '07c18dcf0dd924f697d1967a81472b8218ef17573c56d21d07a310346663a0b7'

  # peacockmedia.co.uk/integrity was verified as official when first introduced to the cask
  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  appcast 'https://peacockmedia.software/mac/integrity/version_history.html'
  name 'Integrity'
  homepage 'https://peacockmedia.software/mac/integrity/'

  app 'Integrity.app'

  zap trash: [
               '~/Library/Application Support/Integrity',
               '~/Library/Caches/com.peacockmedia.integrity',
               '~/Library/Cookies/com.peacockmedia.integrity.binarycookies',
               '~/Library/Preferences/com.peacockmedia.integrity.plist',
             ]
end
