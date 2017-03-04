cask 'nimbus' do
  version '0.8.0'
  sha256 '0fec9d878c457a0776deb40a2d3982bdf5aa5de27253ae2a10894520457d9b57'

  url "https://github.com/jnordberg/irccloudapp/releases/download/#{version}/Nimbus.zip"
  appcast 'https://github.com/jnordberg/irccloudapp/releases.atom',
          checkpoint: '5e6df56386d9d490159f8dd7a55e9cdafeafe48239d34d9516d0d8f2ef5c0dee'
  name 'Nimbus'
  homepage 'https://github.com/jnordberg/irccloudapp'

  app 'Nimbus.app'
end
