cask 'readcube' do
  version '2.1.0'
  sha256 'cb3e54f08f57051252c70b9b45cb8cc2f001769a3ae25a5f5789abe55269eea4'

  url "https://download.readcube.com/desktop/#{version}/ReadCubeSetup.zip"
  name 'ReadCube'
  homepage 'https://www.readcube.com/'

  installer manual: 'Install ReadCube.app'

  uninstall trash: '/Applications/ReadCube.app'

  zap trash: '~/Library/Preferences/com.readcube.Desktop/'
end
