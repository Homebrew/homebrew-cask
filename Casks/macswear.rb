cask 'macswear' do
  version '1.0'
  sha256 'a113fa7a73adac2bb153d49d6d7d1ba15ac1ae5ca78a8d24861900b8664bdd52'

  url "https://wakaba.c3.cx/releases/Swear/MacSwear#{version}.zip"
  appcast 'https://wakaba.c3.cx/s/games/macswear',
          checkpoint: '674535c4feadcaea75bf623df674892dac6a17cd18d08e9ab64b36a72db75abc'
  name 'MacSwear'
  homepage 'https://wakaba.c3.cx/s/games/macswear'

  app 'MacSwear.app'
end
