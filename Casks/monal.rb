cask 'monal' do
  version '2.4b4'
  sha256 'a5816318dabfe7b16d803d2be69172e6f3e0f6d892c0218a9bef1ed9852087b7'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.major_minor
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
