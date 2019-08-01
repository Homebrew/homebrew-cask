cask 'beamer' do
  version '3.3.4'
  sha256 'c8ad45a76063e0c344534e144f0378509f9a401dad279541b96fe1fe393040f3'

  url "https://beamer-app.com/resources/downloads/Beamer-#{version}.zip"
  appcast "https://beamer-app.com/beamer#{version.major}-appcast.xml"
  name 'Beamer'
  homepage 'https://beamer-app.com/'

  app 'Beamer.app'
end
