cask 'integrity' do
  version '9.1.0'
  sha256 '4b61a1434dfd22a9d18b6e3251164e7c7157bc069cb54cc032b9ffd4da730b85'

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
