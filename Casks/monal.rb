cask 'monal' do
  version '2.2b1'
  sha256 'b794417f04581519bc8a13f81de4901b9058c7da942c08719ba92c32e518e81a'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
