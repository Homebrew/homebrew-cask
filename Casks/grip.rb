cask 'grip' do
  version '1.5.0-rc3'
  sha256 'da44a0184b296a8e26f9ef8098dc23f9496f16b8afb5a68573ebfd2743a56327'

  # github.com/WPIRoboticsProjects/GRIP was verified as official when first introduced to the cask
  url "https://github.com/WPIRoboticsProjects/GRIP/releases/download/v#{version}/GRIP-#{version}-x64.dmg"
  appcast 'https://github.com/WPIRoboticsProjects/GRIP/releases.atom',
          checkpoint: 'e3e9e85b0fcc6b87e574b9bf524b9cee9af11ef4956a89e3a626ce380fc9f019'
  name 'GRIP Computer Vision Engine'
  name 'GRIP'
  homepage 'https://wpiroboticsprojects.github.io/GRIP/'

  app 'GRIP.app'
end
