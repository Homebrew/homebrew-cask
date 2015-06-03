cask :v1 => 'scrutiny' do
  version :latest
  sha256 :no_check

  url 'http://peacockmedia.software/mac/scrutiny/scrutiny.dmg'
  name 'Scrutiny5'
  name 'Scrutiny'
  homepage 'http://peacockmedia.software/mac/scrutiny/'
  license :commercial

  app 'Scrutiny5.app'

  zap delete: => [
    '~/Library/Application Support/Scrutiny5',
    '~/Library/Caches/com.peacockmedia.Scrutiny5'
    '~/Library/Preferences/com.peacockmedia.Scrutiny5.plist',
  ]
end
