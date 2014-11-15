cask :v1 => 'rrootage' do
  version :latest
  sha256 :no_check

  url 'https://workram.com/downloads.php?f=rRootage', :referer => 'https://workram.com/games/rrootage'
  homepage 'http://workram.com/games/rrootage/'
  license :unknown

  app 'rRootage.app'
end
