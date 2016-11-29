cask 'mendeley-desktop' do
  version '1.16.3'
  sha256 '54507ca3658f90e38477316aa28adb2c1a4c4a855f5b3e98c5c3be41f8e5a367'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
