cask 'monal' do
  version '2.3b6'
  sha256 'f4462805e256e5f7fd3d05679c9363b77e46cce070b1bbdb4a6e812b0db56188'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
