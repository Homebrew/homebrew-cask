cask 'indi-server' do
  version '2.7.0'
  sha256 'b02a432f20ff00a176f65713b3bfd78f0718fbd57f8eead8ebcbec9db32a927c'

  url "http://download.cloudmakers.eu/INDI_Server_#{version}.dmg"
  name 'INDI Server'
  homepage 'http://www.cloudmakers.eu/'

  app 'INDI Server.app'
end
