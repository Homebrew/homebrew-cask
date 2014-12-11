cask :v1 => 'sequential' do
  version '2.1.2'
  sha256 '7a9247e8623da5b6c74b65ad6d9e0be7667b832816134393e871e584c00eee64'

  url "http://sequentialx.com/Sequential#{version}.zip"
  appcast 'http://www.sequentialx.com/sequential.xml',
          :sha256 => '447db3c7237bdd750ad128556b1d3ff6f3f3c26f8c2bd0131b9993b5365f7d6b'
  homepage 'http://sequentialx.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Sequential.app'
end
