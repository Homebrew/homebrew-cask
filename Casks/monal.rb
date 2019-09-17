cask 'monal' do
  version '2.4.1b4'
  sha256 '63e26de2c0fa7d90b6f8947fdf60976d6ac68e96a558d9b8fd2ae147c46cfc65'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.major_minor
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
