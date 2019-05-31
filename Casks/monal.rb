cask 'monal' do
  version '2.4b5'
  sha256 'bcaae218600ceacaa307d0ccb1dfeb33ad7bbae63531668cc7169b27f6553140'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.major_minor
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
