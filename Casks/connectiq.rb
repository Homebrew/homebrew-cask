cask :v1 => 'connectiq' do
  version '1.1.4'
  sha256 '9994f96668615ad7a5ce875b1db81475c240ffb9934cb16e822bd01e22c5d8c4'

  url "http://developer.garmin.com/downloads/connect-iq/sdks/connectiq-sdk-mac-#{version}.zip"
  name "Garmin Connect IQ SDK v#{version}"
  homepage 'http://developer.garmin.com/connect-iq'
  license :other

  app 'bin/ConnectIQ.app'
  binary 'bin/connectiq'
  binary 'bin/monkeyc'
  binary 'bin/monkeydo'
  binary 'bin/shell'
end
