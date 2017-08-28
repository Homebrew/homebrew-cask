cask 'integrity' do
  version '6.11.3'
  sha256 '7c5fb11b8926c22d5f7abdef3c958773accefd30f32a429a90dc26b7eeab54cb'

  # peacockmedia.co.uk/integrity was verified as official when first introduced to the cask
  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  appcast 'http://peacockmedia.software/mac/integrity/version_history.html',
          checkpoint: '00c843e5a57c8b31ba4471b68eace5877469916bcb813a6c2cbf648d5dafc683'
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
