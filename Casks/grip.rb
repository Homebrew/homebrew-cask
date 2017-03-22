cask 'grip' do
  version '1.5.2'
  sha256 '8d37ec19dd204131e205bbe02416d013f1827bab468a8d396a0369e79fa63adb'

  # github.com/WPIRoboticsProjects/GRIP was verified as official when first introduced to the cask
  url "https://github.com/WPIRoboticsProjects/GRIP/releases/download/v#{version}/GRIP-v#{version}-x64.dmg"
  appcast 'https://github.com/WPIRoboticsProjects/GRIP/releases.atom',
          checkpoint: '705846f8990f130fa5fd9faa0163f758b28b73653050a490f7d2a06f83ef2141'
  name 'GRIP Computer Vision Engine'
  name 'GRIP'
  homepage 'https://wpiroboticsprojects.github.io/GRIP/'

  app 'GRIP.app'
end
