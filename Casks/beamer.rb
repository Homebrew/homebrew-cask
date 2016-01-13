cask 'beamer' do
  version '3.0.4'
  sha256 '7620e46cff5e55241f1fc37d60ba82a5599ac172a494d1f5236176f82ddb69f2'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast 'https://beamer-app.com/beamer3-appcast.xml',
          :sha256 => '806668a0e14c04a737b00da05d80036fdce4fae3c4b7a80a587f2fc211f58174'
  name 'Beamer'
  homepage 'https://beamer-app.com/'
  license :commercial

  app 'Beamer.app'
end
