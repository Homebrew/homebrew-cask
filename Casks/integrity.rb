cask 'integrity' do
  version '6.11.1'
  sha256 '9a497991b2dbd6387b6a4157ff3d797f1cdf8bc92a7f87edfe40abb561705fcc'

  # peacockmedia.co.uk/integrity was verified as official when first introduced to the cask
  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  appcast 'http://peacockmedia.software/mac/integrity/version_history.html',
          checkpoint: '262f0b16404fbb92b16278dacd7d07ecd9a9d5e6496bc248d6df219a2e7bf1ce'
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
