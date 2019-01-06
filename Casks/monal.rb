cask 'monal' do
  version '2.3b8'
  sha256 'c1f92de92532fb151919c6bb66c1114b355bad164281bb9d1307b7cd2d16f1e0'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
