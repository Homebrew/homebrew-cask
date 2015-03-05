cask :v1 => 'rrootage' do
  version :latest
  sha256 :no_check

  url 'https://workram.com/downloads.php?f=rRootage', :referer => 'https://workram.com/games/rrootage'
  name 'rRootage'
  homepage 'http://workram.com/games/rrootage/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'rRootage.app'
end
