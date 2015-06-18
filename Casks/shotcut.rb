cask :v1 => 'shotcut' do
  version '15.06.01'
  sha256 '8b543392309dbf5a42e1ca275d12d3aa27a2cfefbf465c7fc25c087fbadd04ae'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.sub(/\.\d+$/, '')}/shotcut-osx-x86_64-#{version.gsub('.', '')}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'http://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
