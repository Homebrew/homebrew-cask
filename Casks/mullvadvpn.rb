cask 'mullvadvpn' do
  version '2018.1'
  sha256 '9a0c912ed0cf2222649f9367c6cfea338e02c737865bd556f230353096c49f37'

  # github.com/mullvad/mullvadvpn-app was verified as official when first introduced to the cask
  url "https://github.com/mullvad/mullvadvpn-app/releases/download/#{version}/MullvadVPN-#{version}.dmg"
  appcast 'https://github.com/mullvad/mullvadvpn-app/releases.atom',
          checkpoint: '1f9e3c70392cc353bb06f3cdfd5df96ebb23bea63e3a35c7591faafbb1b4c294'
  name 'Mullvad'
  homepage 'https://mullvad.net/'
  gpg "#{url}.asc", key_id: 'a1198702fc3e0a09a9ae5b75d5a1d4f266de8ddf'

  app 'MullvadVPN.app'
end
