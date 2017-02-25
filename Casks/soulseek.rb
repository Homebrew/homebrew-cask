cask 'soulseek' do
  version '2017-2-20'
  sha256 'cea34edd7c914080735dce31a97f480fdfbafcf6b9ce5a6015dc67c7e9f06363'

  url "https://www.slsknet.org/SoulseekQt/Mac/SoulseekQt-#{version}.dmg"
  name 'Soulseek'
  homepage 'https://www.slsknet.org/'

  app 'SoulseekQt.app'
end
