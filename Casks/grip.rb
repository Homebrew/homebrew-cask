cask 'grip' do
  version '1.5.0-rc2'
  sha256 '8b2c9d08c9c36d0c0fb68765c03769a6366063c162add7945f0af21c19775a01'

  # github.com/WPIRoboticsProjects/GRIP was verified as official when first introduced to the cask
  url "https://github.com/WPIRoboticsProjects/GRIP/releases/download/v#{version}/GRIP-#{version}-x64.dmg"
  appcast 'https://github.com/WPIRoboticsProjects/GRIP/releases.atom',
          checkpoint: '351ceeb68abdf0593404e7a01c0510f4fbc45e83dad0b7c6dbfbd4e18c458b1a'
  name 'GRIP Computer Vision Engine'
  name 'GRIP'
  homepage 'https://wpiroboticsprojects.github.io/GRIP/'

  app 'GRIP.app'
end
