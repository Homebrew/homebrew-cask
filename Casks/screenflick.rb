cask 'screenflick' do
  version '2.7.6'
  sha256 '6d70f74c3932bab92f6f2359698dec055371115c6da2fba75c92896638dd6dcd'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: 'db6e16915d9355cdcf24d6ea01b3c2d986be5340f838a50db93860e2088eaeec'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
