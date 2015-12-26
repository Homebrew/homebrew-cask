cask 'beamer' do
  version '3.0.3'
  sha256 '183a28b096415825e9e22816b25cdfbe4b6a55d53d0e1da89cae8d3a55c26f17'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast 'https://beamer-app.com/beamer3-appcast.xml',
          :sha256 => '3b362b71ab9eaec3f9b0b347dece549b1d3c26ae39a064ce687c9fba3c091f83'
  name 'Beamer'
  homepage 'https://beamer-app.com/'
  license :commercial

  app 'Beamer.app'
end
