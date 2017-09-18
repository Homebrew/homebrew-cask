cask 'integrity' do
  version '6.11.4'
  sha256 '6f880c4a635b25715320defea5a08ca448c822251aac8dba876de08137193efb'

  # peacockmedia.co.uk/integrity was verified as official when first introduced to the cask
  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  appcast 'http://peacockmedia.software/mac/integrity/version_history.html',
          checkpoint: 'ba3950c56d4859dc399485a9cea3ed44224de4c18de862b9890a4b061c6a0c37'
  name 'Integrity'
  homepage 'http://peacockmedia.software/mac/integrity/'

  app 'Integrity.app'

  zap delete: [
                '~/Library/Caches/com.peacockmedia.integrity',
                '~/Library/Cookies/com.peacockmedia.integrity.binarycookies',
              ],
      trash:  [
                '~/Library/Application Support/Integrity',
                '~/Library/Preferences/com.peacockmedia.integrity.plist',
              ]
end
