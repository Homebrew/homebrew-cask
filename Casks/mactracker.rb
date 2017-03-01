cask 'mactracker' do
  version '7.6.4'
  sha256 '68d563f02a0f44ebbd23f57521a4defdb85f451938cf632478c0dd2a3a4bd3a4'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: 'f43563a4c621a4623ba43ddb92ab41a3eaffe5942a52fe076e0fed308e1e84ad'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
