cask 'grip' do
  version '1.5.1'
  sha256 '1d0b1d21bfd5093c95ec63e42b71ed31eb0856c25b0c42d396a3682858da60b4'

  # github.com/WPIRoboticsProjects/GRIP was verified as official when first introduced to the cask
  url "https://github.com/WPIRoboticsProjects/GRIP/releases/download/v#{version}/GRIP-v#{version}-x64.dmg"
  appcast 'https://github.com/WPIRoboticsProjects/GRIP/releases.atom',
          checkpoint: '0240da58588de81cf34de5f6f3960f9223d8f3d307ab5b78d0818e374cf75220'
  name 'GRIP Computer Vision Engine'
  name 'GRIP'
  homepage 'https://wpiroboticsprojects.github.io/GRIP/'

  app 'GRIP.app'
end
