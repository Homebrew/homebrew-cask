cask 'ssh-tunnel-manager' do
  version '2.2'
  sha256 '0ccd88cb309f9215c53c0cf1a133439710af15c985314d0afa20053495e6d08c'

  url "https://ssl.tynsoe.org/stm/SSHTunnelManager-#{version}.zip"
  name 'SSH Tunnel Manager'
  homepage 'http://projects.tynsoe.org/en/stm/'
  license :gratis

  app 'SSH Tunnel Manager.app'
end
