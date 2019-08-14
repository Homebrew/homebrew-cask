cask 'popclip' do
  version '1.5.8'
  sha256 '323707f9933c798a909ddb5536839d755f4bbf29d698d4eaec229c29596c888f'

  url "https://pilotmoon.com/downloads/PopClip-#{version}.zip"
  appcast 'https://softwareupdate.pilotmoon.com/update/popclip/appcast.xml'
  name 'PopClip'
  homepage 'https://pilotmoon.com/popclip/'

  app 'PopClip.app'
end
