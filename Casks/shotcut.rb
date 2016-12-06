cask 'shotcut' do
  version '16.12.03'
  sha256 '66afc1d321a4cfd457fbd6865734dfe792812f6356a62de77652d065b69db49f'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '87fe8c9a9ef4ef95357132b66912e869649c59e54e1dd2cca1db72afd5746920'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
