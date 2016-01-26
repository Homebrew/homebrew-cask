cask '5kplayer' do
  version :latest
  sha256 :no_check

  url 'http://www.5kplayer.com/download/5kplayer.dmg'
  name '5KPlayer'
  homepage 'http://www.5kplayer.com'
  license :closed

  app '5KPlayer.app'
end
