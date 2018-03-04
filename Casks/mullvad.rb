cask 'mullvad' do
  version '2018.1'
  sha256 '9a0c912ed0cf2222649f9367c6cfea338e02c737865bd556f230353096c49f37'

  url "https://www.mullvad.net/media/client/MullvadVPN-#{version}.dmg"
  appcast 'https://mullvad.net/media/CHANGES.rst',
          checkpoint: '0f8edb7e8d4287a38402b6ab26f08947403782cf01f0a64d4711ca44df8faf68'
  name 'Mullvad'
  homepage 'https://mullvad.net/'
  gpg "#{url}.asc", key_id: 'a1198702fc3e0a09a9ae5b75d5a1d4f266de8ddf'

  app 'MullvadVPN.app'
end
