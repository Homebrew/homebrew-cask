cask 'mullvad' do
  version '67'
  sha256 '6bf7727467755eb0f1247721ce651fa35c8e485e57e244967495a343890cc44f'

  url "https://www.mullvad.net/media/client/Mullvad-#{version}.dmg"
  name 'Mullvad'
  homepage 'https://mullvad.net/'

  app 'Mullvad.app'
end
