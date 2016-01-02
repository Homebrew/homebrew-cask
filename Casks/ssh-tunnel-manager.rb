cask 'ssh-tunnel-manager' do
  version '2.1.3'
  sha256 '33bf922e76c8784361814abac245920be5fd5648ec1e150f01c0b6b655d36faa'

  url "http://projects.tynsoe.org/downloads/SSH%20Tunnel%20Manager-#{version}.zip"
  name 'SSH Tunnel Manager'
  homepage 'http://projects.tynsoe.org/en/stm/'
  license :gratis

  app 'SSH Tunnel Manager.app'
end
