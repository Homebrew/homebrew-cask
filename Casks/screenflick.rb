cask 'screenflick' do
  version '2.7.18'
  sha256 'ddf37052eb41ef80f501582e3a8f8ebeef72f92e64443919a869dca41239cd4c'

  url "https://store.araelium.com/screenflick/downloads/versions/Screenflick#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          checkpoint: '46bfabe2cb7552664330a3067472ea4e84a14799fd97ea56ed29c7e7a058d096'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :commercial

  app 'Screenflick.app'
end
