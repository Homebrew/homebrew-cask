cask 'mactracker' do
  version '7.6.1'
  sha256 '3ee0ffa6febbd33acfd716b1cc509527140286faa1f34897e6f123d5cefdaec8'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: '0ca1563f0af35ddfb2e460dbd700bb4542a3c3b43f22b73bee161282f47c005b'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
