cask 'shotcut' do
  version '17.01.02'
  sha256 '4dac35b32a3fdcfd3fdf9da50a4e6e6d974a5044b36859b9781a43f7876fdf51'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: 'b6678c8dbe8af2c5394e1a6cbb55fd5a9651e6053bc6e9bf73d89deeee212c5c'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
