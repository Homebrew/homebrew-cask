cask 'screenflick' do
  version '2.7.4'
  sha256 '329598107c539f3e6f710f57dd5a6c7ef9cae361d00ffaa8b9299b940a4cbac4'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          :checkpoint => '2d5c82ae20520bcce65187fa43a218447b815ceaa903700b3edf397973bc7206'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
