cask 'monal' do
  version '2.4.1b1'
  sha256 'c9e0064d201828af524f12d0b7d5b896416fe21366819b367b02f744a43c10bd'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.major_minor
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
