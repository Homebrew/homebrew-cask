cask 'shotcut' do
  version '16.01.02'
  sha256 '9e6d4bf368e6af7d3a8961dbdc74789818692cd089806bff84f42ce4c2035cde'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          :sha256 => '772560f30bed2d8abc85288ca13cb882b6fe9f9010816488e836a213ac68faae'
  name 'Shotcut'
  homepage 'http://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
