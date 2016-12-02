cask 'grip' do
  version '1.5.0'
  sha256 '1b0e6f3e1d1b926ece83c47cfe3de99b4afbc60b7199893b35eba387e5e455b0'

  # github.com/WPIRoboticsProjects/GRIP was verified as official when first introduced to the cask
  url "https://github.com/WPIRoboticsProjects/GRIP/releases/download/v#{version}/GRIP-#{version}-x64.dmg"
  appcast 'https://github.com/WPIRoboticsProjects/GRIP/releases.atom',
          checkpoint: '389751add1d0b6c8b07ea09e9b193e7651868049952113f502414dabfeda55ce'
  name 'GRIP Computer Vision Engine'
  name 'GRIP'
  homepage 'https://wpiroboticsprojects.github.io/GRIP/'

  app 'GRIP.app'
end
