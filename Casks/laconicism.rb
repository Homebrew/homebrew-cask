cask :v1 => 'laconicism' do
  version :latest
  sha256 :no_check

  url 'http://www.earslap.com/assets/laconicism/Laconicism.dmg'
  name 'Laconicism'
  homepage 'http://www.earslap.com/weblog/music-release-laconicism.html'
  license :cc

  app 'Laconicism.app'
end
