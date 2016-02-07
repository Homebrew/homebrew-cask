cask 'sequential' do
  version '2.1.2'
  sha256 '7a9247e8623da5b6c74b65ad6d9e0be7667b832816134393e871e584c00eee64'

  url "http://sequentialx.com/Sequential#{version}.zip"
  appcast 'http://sequentialx.com/sequential.xml',
          checkpoint: '1fb8416920c90af57525b72c518fd89b0e6e29775d576720adf7535268ea510d'
  name 'Sequential'
  homepage 'http://sequentialx.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sequential.app'
end
