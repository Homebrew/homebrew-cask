cask 'screenflick' do
  version '2.7.7'
  sha256 'ff7540cf513ed92679d27c25fc00ca2243d993204038857fba2d7824f4760bbd'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: '06a3334e172cc559b83ef8613200f08b98e9a95e5c6de2cf47faaab9ec5390a5'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
