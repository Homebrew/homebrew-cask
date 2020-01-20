cask 'elpass' do
  version '1.1.0,209'
  sha256 '861d755af812c527163a7a2420f34a895ca6082c031dd32dec05ad9ed5b2e908'

  url "https://elpass.app/macos/Elpass-#{version.before_comma}-#{version.after_comma}.zip"
  appcast 'https://elpass.app/macos/appcast.xml'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
