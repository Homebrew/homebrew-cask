cask 'monal' do
  version '2.3b5'
  sha256 'c401038cf398270e8415ace2fb0ca82460133f0b28a3833a281f15391172f46b'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
