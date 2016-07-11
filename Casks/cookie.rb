cask 'cookie' do
  version '5.0.9'
  sha256 '638dfb131e7d662c8e1846e90588314dc63e4cd435e52c0d060930845cd70059'

  url 'https://sweetpproductions.com/products/cookie5/Cookie5.zip'
  appcast 'https://sweetpproductions.com/products/cookie5/appcast.xml',
          checkpoint: '68f0054f8a9a5c23ddfe506f86d2f30f63962b5b417f29b5dd0ed430d7d8b0a5'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'
  license :commercial

  app 'Cookie.app'
end
