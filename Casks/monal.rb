cask 'monal' do
  version '2.5b3'
  sha256 '891b9c9c46cc1069970701940a37f9769fb15943ce4ae1aaaca46fc4b35556c0'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.major_minor
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
