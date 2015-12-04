cask :v1 => 'beamer' do
  version '3.0.1'
  sha256 '1f73fb789214ddacb5493ff4df1603e1b3c6aa54d0a677995eb77481c0e5198c'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  name 'Beamer'
  appcast 'http://beamer-app.com/beamer3-appcast.xml'
  homepage 'http://beamer-app.com'
  license :commercial

  app 'Beamer.app'
end
