cask 'shotcut' do
  version '17.06.01'
  sha256 'fb5cace2417203553154d6a711e4c15ec91ccfce25ea0081c30099832e07c341'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '44e1bb07086f28d93ed45d2729ef756eb3c5575bcf09dc4d7ccfcb712119e579'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
