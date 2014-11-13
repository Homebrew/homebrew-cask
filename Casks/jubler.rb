cask :v1 => 'jubler' do
  version '5.0.1'
  sha256 '295d23433a88a26c113529e6eb15548b260525acc2d86fec1b90cbfbf9572b1e'

  url "http://downloads.sourceforge.net/sourceforge/jubler/Jubler-#{version}.dmg"
  homepage 'http://www.jubler.org/'
  license :oss

  app 'Jubler.app'
end
