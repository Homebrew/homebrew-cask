cask 'beamer' do
  version '3.0.4'
  sha256 '7620e46cff5e55241f1fc37d60ba82a5599ac172a494d1f5236176f82ddb69f2'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast 'https://beamer-app.com/beamer3-appcast.xml',
          checkpoint: '6b21339753ec4647971b70c0679f4037f4351e006ffed86b31dde7b4b185f454'
  name 'Beamer'
  homepage 'https://beamer-app.com/'
  license :commercial

  app 'Beamer.app'
end
