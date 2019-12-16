cask 'monal' do
  version '2.5b1'
  sha256 'd241fda6c68a07171459f83a6e21fe91174b97fcb16b2f84ba5358dea76745da'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.major_minor
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
