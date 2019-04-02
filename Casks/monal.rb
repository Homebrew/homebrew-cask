cask 'monal' do
  version '2.4b1'
  sha256 '87676da93e04ad7b12c943c44e932ebb643f852aac88f5a228c44b4d9956d91a'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
