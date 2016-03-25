cask 'connectiq' do
  version '1.2.1'
  sha256 '37461e01e41697c9abe794772649a9f144d358c6da56b1dd39f0c533f3a29198'

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
