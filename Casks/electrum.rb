cask 'electrum' do
  version '2.7.18'
  sha256 '18317ba924475223ae6fc50787850e63ed078d4d4a2e8d534c5843a2df2a9bf2'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: 'dd63ed86f087cae57551ac08c27c3b02dfb6aff27f4ad27c410a6a43b1cf610b'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
