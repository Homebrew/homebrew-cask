cask 'sbrowserq' do
  version '3.6.3'
  sha256 '1e59a6017a31d6da4b6eb2616dff4e86f9c0f4b932e154c09b1595a0585d167b'

  url "https://www.sbrowser-q.com/SbrowserQ_V#{version.major_minor}_mac.dmg"
  appcast 'https://www.sbrowser-q.com/',
          configuration: version.major_minor
  name 'SbrowserQ'
  homepage 'https://www.sbrowser-q.com/'

  app 'SbrowserQ.app'
end
