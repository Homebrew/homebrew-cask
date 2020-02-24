cask 'sequential' do
  version '2.1.2'
  sha256 '7a9247e8623da5b6c74b65ad6d9e0be7667b832816134393e871e584c00eee64'

  url "http://sequentialx.com/Sequential#{version}.zip"
  appcast 'http://sequentialx.com/sequential.xml'
  name 'Sequential'
  homepage 'http://sequentialx.com/'

  app 'Sequential.app'
end
