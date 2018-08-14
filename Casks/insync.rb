cask 'insync' do
  version '1.4.8.37107'
  sha256 'fed63763b047469ec76a15db51ad0643e6ff05dddef27f5a4f7d40476aa1d889'

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name 'Insync'
  homepage 'https://www.insynchq.com/'

  conflicts_with cask: 'insync-beta'

  app 'Insync.app'
end
