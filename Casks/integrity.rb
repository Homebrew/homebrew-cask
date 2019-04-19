cask 'integrity' do
  version '8.3.7'
  sha256 '1a5b406601b085ba53d00279f94365997b9dbfaf2fefa2fd76db23d11434b020'

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
