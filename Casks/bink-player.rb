cask 'bink-player' do
  version :latest
  sha256 :no_check

  url 'http://www.radgametools.com/down/Bink/BinkMacIntelPlayer.dmg'
  name 'Bink Video Player'
  homepage 'http://www.radgametools.com/bnkdown.htm'

  app 'BinkMacIntelPlayer.app'
end
