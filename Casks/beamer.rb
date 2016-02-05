cask 'beamer' do
  version '3.1'
  sha256 'bb91e96426fc8e14ca92f2e3e4cf49a315584a1d8d8dd387a1ff4b4aa808e07b'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast 'https://beamer-app.com/beamer3-appcast.xml',
          checkpoint: '5170d7a3b89146f88ffdc3489c12b66158b46edfd326a5a699f056cd66109aae'
  name 'Beamer'
  homepage 'https://beamer-app.com/'
  license :commercial

  app 'Beamer.app'
end
