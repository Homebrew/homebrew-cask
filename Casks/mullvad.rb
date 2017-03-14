cask 'mullvad' do
  version '61'
  sha256 '16769849f5370d406765d607a9c9d650c01aa48f0c1c4d99d4587ba7bcbfd83c'

  url "https://www.mullvad.net/media/client/Mullvad-#{version}.dmg"
  name 'Mullvad'
  homepage 'https://mullvad.net/'

  app 'Mullvad.app'
end
