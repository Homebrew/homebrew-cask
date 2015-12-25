cask 'beamer' do
  version '3.0.2'
  sha256 '3f3ce843b579e0b1aa9796bb0a2057b018a5afe0e719f0c143076f037ac194d4'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  name 'Beamer'
  appcast 'http://beamer-app.com/beamer3-appcast.xml',
          :sha256 => '3b362b71ab9eaec3f9b0b347dece549b1d3c26ae39a064ce687c9fba3c091f83'
  homepage 'http://beamer-app.com'
  license :commercial

  app 'Beamer.app'
end
