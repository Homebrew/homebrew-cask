cask 'screenflick' do
  version '2.7.15'
  sha256 '632df443b62b2d5056016f2f21b26e267cc4b9b647607f3757f739c21cbde442'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: '3bef61d062771a300a13df5ee63484807cd74376ff4b3d426649043f2811515a'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
