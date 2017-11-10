cask 'electrum' do
  version '3.0.1'
  sha256 'b2961dfda31aa7b2365bc438b56a6937b248e0bd94a5d9698f4bebfedafb5701'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: 'e4bb1abefa115062034ffffaea9faddc97cb6a70e8fd361afee4e61b16e496e7'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
