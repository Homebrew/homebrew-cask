cask 'shotcut' do
  version '17.01.02'
  sha256 '4dac35b32a3fdcfd3fdf9da50a4e6e6d974a5044b36859b9781a43f7876fdf51'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '87fe8c9a9ef4ef95357132b66912e869649c59e54e1dd2cca1db72afd5746920'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
