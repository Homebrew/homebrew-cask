cask 'monal' do
  version '2.4.1b1'
  sha256 '35a102298db05f5c628ca426f27118acea2bf00ca3cb41bbbe6f64a843c8f0a9'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.major_minor
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
