cask :v1 => 'shotcut' do
  version '15.05.06'
  sha256 '72d048e247b363026a3ca1461efe9fff17cb5491e14f9a5ec44a8f30f215cd06'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.sub(/\.\d+$/, '')}/shotcut-osx-x86_64-#{version.gsub('.', '')}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'http://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
