cask 'monal' do
  version '2.4.1b5'
  sha256 '1c2046be6bf8b3d21e2104192087b5ec169291e54ef5a04c680ee176a9d4e2e6'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.major_minor
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
