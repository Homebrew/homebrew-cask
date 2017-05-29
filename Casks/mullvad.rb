cask 'mullvad' do
  version '63'
  sha256 '6ba5fcf3d29462273b15de586a5f269a0f28e578adf4231b12ac13ac02f4c41b'

  url "https://www.mullvad.net/media/client/Mullvad-#{version}.dmg"
  name 'Mullvad'
  homepage 'https://mullvad.net/'

  app 'Mullvad.app'
end
