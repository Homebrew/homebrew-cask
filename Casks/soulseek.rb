cask 'soulseek' do
  version '2015-2-21'
  sha256 '516f9dc0c9a23926c7929ef62d8abdd3a910cfb30e698e5faabcd21bc7090d45'

  url "http://www.soulseekqt.net/SoulseekQt/Mac/SoulseekQt-#{version}.dmg"
  name 'Soulseek'
  homepage 'http://www.soulseekqt.net/'
  license :gratis

  app 'SoulseekQt.app'
end
