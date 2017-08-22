cask 'integrity' do
  version '6.11.2'
  sha256 'c0a36b7febd035a881c4e9f2bbf60f6d9aaca795e2399c4dd3cbf0ead0561526'

  # peacockmedia.co.uk/integrity was verified as official when first introduced to the cask
  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  appcast 'http://peacockmedia.software/mac/integrity/version_history.html',
          checkpoint: '9af958b2724edad449f8d3b9023768f720f43a6b1e28ffba3b3b44cc500fe44a'
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
