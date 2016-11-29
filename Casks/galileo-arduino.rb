cask 'galileo-arduino' do
  version '1.6.0'
  sha256 '529a8b71aa21fc1e8621d562f1e51fd9d5e36afb0610ccb6905ecef41d209d14'

  url "https://downloadmirror.intel.com/24355/eng/IntelArduino-#{version}-OSX.zip"
  name 'Intel Galileo Arduino SW'
  homepage 'https://downloadcenter.intel.com/download/24355/Intel-Galileo-Board-Software-Package'

  app 'Arduino.app'
end
