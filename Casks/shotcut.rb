cask :v1 => 'shotcut' do
  version '15.03.03'
  sha256 '750c03405086560dbe8578d96947852f258420b203a9e88f9dfaa7fbe0852760'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.sub(/\.\d+$/, '')}/shotcut-osx-x86_64-#{version.gsub('.', '')}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom'
  name 'Shotcut'
  homepage 'http://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
