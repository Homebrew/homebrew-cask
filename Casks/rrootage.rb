cask :v1 => 'rrootage' do
  version :latest
  sha256 :no_check

  url 'https://workram.com/downloads.php?f=rRootage', :referer => 'https://workram.com/games/rrootage'
  name 'rRootage'
  homepage 'http://workram.com/games/rrootage/'
  license :bsd

  app 'rRootage.app'
end
