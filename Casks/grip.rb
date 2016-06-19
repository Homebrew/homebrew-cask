cask 'grip' do
  version '1.4.0'
  sha256 '9b51f8624d65b555c377ca382a53887f4fc8fe3f5021414cf4fb1b8beadf82b4'

  # github.com/WPIRoboticsProjects/GRIP was verified as official when first introduced to the cask
  url "https://github.com/WPIRoboticsProjects/GRIP/releases/download/v#{version}/GRIP-#{version}-x64.dmg"
  appcast 'https://github.com/WPIRoboticsProjects/GRIP/releases.atom',
          checkpoint: '12cb4d50279babdf1bc6d6a65cd8906f69fdf0f12d8cf8f9c978cc9bac94e4bd'
  name 'GRIP Computer Vision Engine'
  name 'GRIP'
  homepage 'http://wpiroboticsprojects.github.io/GRIP/'
  license :oss

  app 'GRIP.app'
end
