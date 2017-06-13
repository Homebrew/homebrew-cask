cask 'pencil' do
  version '3.0.3'
  sha256 '4b1e13354b76a5fd3d662edcc26aeab156a38b46f4e2e8f84582f369c725fbf2'

  url "http://pencil.evolus.vn/dl/V#{version}/Pencil-#{version}.dmg"
  appcast 'https://github.com/evolus/pencil/releases.atom',
          checkpoint: 'e65e3ee4c1e89054083e0f3a8fb7078baea1ad126e2953e8d39a015214af8828'
  name 'Pencil'
  homepage 'https://pencil.evolus.vn/'

  app 'Pencil.app'
end
