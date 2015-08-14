cask :v1 => 'arduino' do
  version '1.6.5-r3'
  sha256 'f0127a2dc365f1ca2da53d46c432a17ebeee37255d0a978195720b811902273c'

  url "http://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'https://www.arduino.cc/'
  license :oss

  app 'Arduino.app'
end
