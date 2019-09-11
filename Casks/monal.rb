cask 'monal' do
  version '2.4.1b3'
  sha256 'b01c025ec3cfe5c7f5f69e08e1bc998462810a85cdd889199022611377d3d99a'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.major_minor
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
