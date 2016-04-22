cask 'screenflick' do
  version '2.7.12'
  sha256 '314d855c59a1f3124d4867b984f7ca28a27b61164096b9c0f69c0020ef4f565d'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: 'abf7983542c28399d22d860295c97779f401e4dc792634d0648370c69a5cd484'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
