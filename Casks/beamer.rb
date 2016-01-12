cask 'beamer' do
  version '3.0.4'
  sha256 '7620e46cff5e55241f1fc37d60ba82a5599ac172a494d1f5236176f82ddb69f2'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast 'https://beamer-app.com/beamer3-appcast.xml',
          :sha256 => '3261170bd5550d6b4942e15eb047515a499e6f87825066251bf8c36c71af4254'
  name 'Beamer'
  homepage 'https://beamer-app.com/'
  license :commercial

  app 'Beamer.app'
end
