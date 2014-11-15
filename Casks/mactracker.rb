cask :v1 => 'mactracker' do
  version '7.3.2'
  sha256 '3a156082b09b3c4e1ef2d94cba91fe67c42ee0d4010fa7e73a213481c384dab5'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => '0185504097321035adee92a20eaf0138cea94420d302c4368499b5783675e67e'
  homepage 'http://mactracker.ca/'
  license :unknown

  app 'Mactracker.app'
end
