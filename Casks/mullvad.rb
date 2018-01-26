cask 'mullvad' do
  version '65'
  sha256 '27a9b8bd1f5c7effda87e104b217aac4e39cc299d0e706472b8766d24a70d4a5'

  url "https://www.mullvad.net/media/client/Mullvad-#{version}.dmg"
  name 'Mullvad'
  homepage 'https://mullvad.net/'

  app 'Mullvad.app'
end
