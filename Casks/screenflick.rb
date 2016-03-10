cask 'screenflick' do
  version '2.7.8'
  sha256 '4151d872461c1f9be34c59bc87dc8f82ef7dcadf64110a7b11a99b8ac56733c3'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: '487915141cca4410f22984c0f04dbce4ffadfb04b0d3bfc8fb2c25cae8ea943d'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
