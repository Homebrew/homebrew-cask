cask 'monal' do
  version '2.3b3'
  sha256 'bc4428821bbe5c55c7ba7a01bfab8fd4d0357a212d92d4a7504d9c95385a4adc'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
