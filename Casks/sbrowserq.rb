cask 'sbrowserq' do
  version '3.6'
  sha256 'cd68f1df6c08ec16746b73504f789c606ebfdbe0bfd1eab04f869881f4d64b46'

  url "https://www.sbrowser-q.com/SbrowserQ_V#{version}_mac.dmg"
  appcast 'https://www.sbrowser-q.com/'
  name 'SbrowserQ'
  homepage 'https://www.sbrowser-q.com/'

  app 'SbrowserQ.app'
end
