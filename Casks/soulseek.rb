cask 'soulseek' do
  version '2015-8-21'
  sha256 '16a1ac9e4a6ff243f4f8874cf9a64637a6e7e4edfcbd8598b118d03a97c8220e'

  url "http://www.soulseekqt.net/SoulseekQt/Mac/SoulseekQt-#{version}.dmg"
  name 'Soulseek'
  homepage 'http://www.soulseekqt.net/'
  license :gratis

  app 'SoulseekQt.app'
end
