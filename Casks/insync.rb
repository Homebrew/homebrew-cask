cask :v1 => 'insync' do
  version '1.0.37.31804'
  sha256 '782c66bab03e1edf9235b88aed68680e63116242e696c9d1016800dc9ffbe92c'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  homepage 'https://insynchq.com/'
  license :unknown

  app 'Insync.app'
end
