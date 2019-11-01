cask 'stereo-tool' do
  version '9.37'
  sha256 '3dca564359eb7626086f96d62c3b706c4db78205f6b0e3080b2de7bcb6c62db5'

  url 'https://www.stereotool.com/download/ThimeoStereoTool-Installer.dmg'
  appcast 'https://www.stereotool.com/download/'
  name 'Stereo Tool'
  homepage 'https://www.stereotool.com/'

  app 'ThimeoStereoTool.app'
end
