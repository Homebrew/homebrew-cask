cask :v1 => 'pingendo' do
  version '0.9.8'
  sha256 '225fff0bdcceba47f2a070f288e9cd050457b4c0fd6338ca6ae0ed39704652cf'

  # rackcdn is the official download host per the vendor homepage
  url 'http://4fc04c8ebf126ab04f53-f320bffcc167100f6f16c7bb13352e54.r56.cf2.rackcdn.com/Pingendo.dmg'
  homepage 'http://www.pingendo.com/'
  license :closed

  app 'Pingendo.app'
end
