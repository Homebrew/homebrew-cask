cask 'integrity' do
  version '6.11.0'
  sha256 'e9778f8fb813280b5f45e543790a714fa956e7a798866ffcd5619c41cd8744ee'

  # peacockmedia.co.uk/integrity was verified as official when first introduced to the cask
  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  appcast 'http://peacockmedia.software/mac/integrity/version_history.html',
          checkpoint: '81c829f1a89dfd09a1d83c5710688fec417e7fc65cda277d623dc78ac6fcbdc0'
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
