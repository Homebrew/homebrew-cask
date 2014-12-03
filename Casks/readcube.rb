cask :v1 => 'readcube' do
  version '2.0.12'
  sha256 'fe833ae0b0317f85781344d422027fdb2b8e6dd6e30860fff8e427d60c1c5a3c'

  url "http://download.readcube.com/desktop/#{version}/ReadCubeSetup.zip"
  homepage 'https://www.readcube.com/'
  license :unknown

  installer :manual => 'Install ReadCube.app'

  uninstall :trash => '/Applications/ReadCube.app'
  zap :delete => '~/Library/Preferences/com.readcube.Desktop/'
end
