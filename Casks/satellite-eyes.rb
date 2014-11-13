cask :v1 => 'satellite-eyes' do
  version '1.2.4'
  sha256 'adc1554c9095e3f316474e0f3712fa2a086d9405d126eca6359b8ebdc7451902'

  url "https://satellite-eyes.s3.amazonaws.com/satellite-eyes-#{version}.zip"
  appcast 'https://satellite-eyes.s3.amazonaws.com/appcast.xml',
          :sha256 => 'ef859a7550ea22ebbd91423e2336228a35e60bb901112cfe1f17c8f0481ccbf9'
  homepage 'http://satelliteeyes.tomtaylor.co.uk/'
  license :unknown

  app 'Satellite Eyes.app'
end
