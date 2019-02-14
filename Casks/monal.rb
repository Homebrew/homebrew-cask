cask 'monal' do
  version '2.3b19'
  sha256 '12b16696d6dc931e998a482563f9ee0d03d3a42f170b6a951d9c888fe6587f33'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
