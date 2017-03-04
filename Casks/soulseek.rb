cask 'soulseek' do
  version '2017-2-25'
  sha256 '9bc76b360fb326807c3c655fdb9af98ea4b5db30ee56a1baed9c65c0897fd5d4'

  url "https://www.slsknet.org/SoulseekQt/Mac/SoulseekQt-#{version}.dmg"
  name 'Soulseek'
  homepage 'https://www.slsknet.org/'

  app 'SoulseekQt.app'
end
