cask 'electrum' do
  version '2.9.3'
  sha256 '228fd5d7e4bc151604ba814fbe5b25be994dfb33e51f3b7ecf58246856aef0b4'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: 'cc6fee2cd1357ad49eeed0dafccf340e6133ebf1202ab5508d4de9e567a85144'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
