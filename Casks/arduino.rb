cask :v1 => 'arduino' do
  version '1.6.4'
  sha256 '852f12a53f2902fa1bcc64a5027f522a7e7676c0c868b697b122a4c29faa40aa'

  url "http://arduino.cc/download.php?f=/arduino-#{version}-macosx.zip"
  name 'Arduino'
  homepage 'http://arduino.cc/'
  license :oss

  app 'Arduino.app'
end
