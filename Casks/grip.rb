cask 'grip' do
  version '1.5.2'
  sha256 '8d37ec19dd204131e205bbe02416d013f1827bab468a8d396a0369e79fa63adb'

  # github.com/WPIRoboticsProjects/GRIP was verified as official when first introduced to the cask
  url "https://github.com/WPIRoboticsProjects/GRIP/releases/download/v#{version}/GRIP-v#{version}-x64.dmg"
  appcast 'https://github.com/WPIRoboticsProjects/GRIP/releases.atom'
  name 'GRIP Computer Vision Engine'
  name 'GRIP'
  homepage 'https://wpiroboticsprojects.github.io/GRIP/'

  app 'GRIP.app'
end
