cask :v1 => 'shotcut' do
  version '15.08.10'
  sha256 'c94df62d2459e3f5c641eca130669d9d931ff49d9858cab263efc79ef18eb81c'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.sub(/\.\d+$/, '')}/shotcut-osx-x86_64-#{version.delete('.')}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'http://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
