cask :v1 => 'beamer' do
  version '3.0'
  sha256 'fcf08bb2e46318a056207786dc50992d19645d373e9783403a0ebe2c9de488c1'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  name 'Beamer'
  appcast 'http://beamer-app.com/beamer3-appcast.xml'
  homepage 'http://beamer-app.com'
  license :commercial

  app 'Beamer.app'
end
