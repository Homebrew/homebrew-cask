cask 'brightness' do
  version '1.1.2'
  sha256 '1bb6e6a993ee5c64ba27c28f96160ed64c5136835f73f2f7fe9f553b90f4a90c'

  url "http://www.bergdesign.com/resources/Brightness/Brightness_#{version}.dmg"
  appcast 'http://bergdesign.com/brightness/'
  name 'Brightness'
  homepage 'http://bergdesign.com/brightness/'

  app 'Brightness.app'
end
