cask :v1 => 'chainsaw' do
  version '2.1.0'
  sha256 '3449c1d0fca70f78b656a151dabaf5c8149e1dbec2854b7a662b7f242ce299d2'

  url "http://people.apache.org/~sdeboy/apache-chainsaw-#{version}-SNAPSHOT.dmg"
  name 'Chainsaw'
  homepage 'http://logging.apache.org/chainsaw/'
  license :apache

  app 'Chainsaw.app'

  zap :delete => '~/.chainsaw'
  
  depends_on => :ppc
end
