cask 'monal' do
  version '2.3b4'
  sha256 'db619e074fbb9760279e3390160769da4e2481f68d62331102f72e86fe1f55a7'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
