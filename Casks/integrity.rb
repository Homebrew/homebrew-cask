cask 'integrity' do
  version '9.5.3'
  sha256 'e3b586e0048896df561679efe2edd4d16435ce5aafa73b8d2ba1cc012cf4764e'

  url 'https://peacockmedia.software/mac/integrity/integrity.dmg'
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
