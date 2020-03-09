cask 'integrity' do
  version '9.5.6'
  sha256 'cacebb5eaad3d76ee3c4af1e0421fabc35069efba1515a8e16e66d8b05d41580'

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
