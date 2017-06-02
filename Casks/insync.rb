cask 'insync' do
  version '1.3.16.36155'
  sha256 '1d4c353bf97a144685a1777d3827a7e1f0314263e12fad24b30012d99b465751'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  app 'Insync.app'
end
