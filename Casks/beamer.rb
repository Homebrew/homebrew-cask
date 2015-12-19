cask 'beamer' do
  version '3.0.2'
  sha256 '3f3ce843b579e0b1aa9796bb0a2057b018a5afe0e719f0c143076f037ac194d4'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  name 'Beamer'
  appcast 'http://beamer-app.com/beamer3-appcast.xml'
  homepage 'http://beamer-app.com'
  license :commercial

  app 'Beamer.app'
end
