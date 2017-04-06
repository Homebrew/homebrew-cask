cask 'screenflick' do
  version '2.7.25'
  sha256 'd81e173cd700ac78b90fd06dc6b53cfe30d4eade83ea65ab6061dd193df36241'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast "https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick#{version.major}.xml",
          checkpoint: '1223b33969c37f4f24bcf4394afcbb0d338139283cddc0c29288a6d71a19c076'
  name 'Screenflick'
  homepage 'https://www.araelium.com/screenflick/'

  app 'Screenflick.app'
end
