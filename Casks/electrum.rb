cask 'electrum' do
  version '2.9.0'
  sha256 '2b3a740703ae3f2eefcb057a17744c31ea8de37ea71965d0345ff2c3a8242cfc'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: 'e88c7a60523d673f319302d6d4c1fe88fc677ee0868275bb1c4b84f9b1fb4793'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
