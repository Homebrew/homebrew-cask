cask 'mullvad' do
  version '67'
  sha256 '6bf7727467755eb0f1247721ce651fa35c8e485e57e244967495a343890cc44f'

  url "https://www.mullvad.net/media/client/Mullvad-#{version}.dmg"
  appcast 'https://mullvad.net/media/CHANGES.rst',
          checkpoint: '0f8edb7e8d4287a38402b6ab26f08947403782cf01f0a64d4711ca44df8faf68'
  name 'Mullvad'
  homepage 'https://mullvad.net/'
  gpg "#{url}.asc", key_id: 'a1198702fc3e0a09a9ae5b75d5a1d4f266de8ddf'

  app 'Mullvad.app'
end
