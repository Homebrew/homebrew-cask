class SatelliteEyes < Cask
  version '1.2.4'
  sha256 'adc1554c9095e3f316474e0f3712fa2a086d9405d126eca6359b8ebdc7451902'
  
  url 'https://satellite-eyes.s3.amazonaws.com/satellite-eyes-1.2.4.zip'
  appcast 'https://satellite-eyes.s3.amazonaws.com/appcast.xml'
  homepage 'http://satelliteeyes.tomtaylor.co.uk/'

  link 'Satellite Eyes.app'
end
