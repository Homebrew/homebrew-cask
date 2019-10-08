cask 'popclip' do
  version '2019.9.1'
  sha256 '4dccb918097bc8c61a23054257a54b581446eae7987162ea99581afbebf73a8c'

  url "https://pilotmoon.com/downloads/PopClip-#{version}.zip"
  appcast 'https://softwareupdate.pilotmoon.com/update/popclip/appcast.xml'
  name 'PopClip'
  homepage 'https://pilotmoon.com/popclip/'

  depends_on macos: '>= :sierra'

  app 'PopClip.app'
end
