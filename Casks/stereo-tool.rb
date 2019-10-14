cask 'stereo-tool' do
  version '9.35'
  sha256 'db3e369592f07206d6a28903434787a03fd3195c36ccd2a14c38ed8d2d3396ff'

  url 'https://www.stereotool.com/download/ThimeoStereoTool-Installer.dmg'
  appcast 'https://www.stereotool.com/download/'
  name 'Stereo Tool'
  homepage 'https://www.stereotool.com/'

  app 'ThimeoStereoTool.app'
end
