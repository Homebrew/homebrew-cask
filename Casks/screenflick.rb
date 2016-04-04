cask 'screenflick' do
  version '2.7.10'
  sha256 '8f9721059184cf2c7f14c902d2ec3dc476572acdff7f7b52ee2369e5525e164c'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: '16ae13996d7a89496ac8b342c10d8720ddc63015614b8244f91440789af3fff2'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
