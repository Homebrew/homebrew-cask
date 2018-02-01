cask 'mullvad' do
  version '66'
  sha256 'dc7b0da69c00ac5f632260d4990978cc928dd49ad323d5ba8070e9d21090cd52'

  url "https://www.mullvad.net/media/client/Mullvad-#{version}.dmg"
  name 'Mullvad'
  homepage 'https://mullvad.net/'

  app 'Mullvad.app'
end
