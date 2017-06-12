cask 'pencil' do
  version '3.0.0'
  sha256 '219a265dfaacb6f25244cd52d27a65b95ae34a2edd11d3b23229e160ce71fef7'

  url "http://pencil.evolus.vn/dl/V#{version}/Pencil-#{version}.dmg"
  appcast 'https://github.com/evolus/pencil/releases.atom',
          checkpoint: 'e65e3ee4c1e89054083e0f3a8fb7078baea1ad126e2953e8d39a015214af8828'
  name 'Pencil'
  homepage 'https://pencil.evolus.vn/'

  app 'Pencil.app'
end
