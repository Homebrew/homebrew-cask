cask 'beamer' do
  version '3.0.4'
  sha256 '7620e46cff5e55241f1fc37d60ba82a5599ac172a494d1f5236176f82ddb69f2'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast 'https://beamer-app.com/beamer3-appcast.xml',
          checkpoint: '7c647419df11529623465506dc3bb6250680a2573a4af88b0dd8c55b33a53d37'
  name 'Beamer'
  homepage 'https://beamer-app.com/'
  license :commercial

  app 'Beamer.app'
end
