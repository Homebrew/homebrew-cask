cask 'scrutiny' do
  version :latest
  sha256 :no_check

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  name 'Scrutiny'
  homepage 'http://peacockmedia.software/mac/scrutiny/'
  license :commercial

  app 'Scrutiny.app'

  zap delete: [
                '~/Library/Application Support/Scrutiny5',
                '~/Library/Caches/com.peacockmedia.Scrutiny5',
                '~/Library/Preferences/com.peacockmedia.Scrutiny5.plist',
                '~/Library/Cookies/com.peacockmedia.Scrutiny5.binarycookies',
              ]
end
