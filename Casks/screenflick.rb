cask 'screenflick' do
  version '2.7.9'
  sha256 '3e73df8bb21db0081cc4fea819dd8454c99eafb16bd0eb500c25d7b833769f8c'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: '0bbd32d9dc10b7a07b0debe190eeaf279413d9b0699ce29b54225be7d5d8363c'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
