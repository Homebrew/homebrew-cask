cask 'popclip' do
  version '1.5.8'
  sha256 '323707f9933c798a909ddb5536839d755f4bbf29d698d4eaec229c29596c888f'

  url "https://pilotmoon.com/downloads/PopClip-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/58adb6c5bea28ffe22f304f2f383d089'
  name 'PopClip'
  homepage 'https://pilotmoon.com/popclip/'

  app 'PopClip.app'
end
