cask 'stereo-tool' do
  version '9.34'
  sha256 '8b0c9044b39c29e26ce5c5f1d7d344290908cab107731992daaddd0a8f7c9b24'

  url 'https://www.stereotool.com/download/ThimeoStereoTool-Installer.dmg'
  appcast 'https://www.stereotool.com/download/'
  name 'Stereo Tool'
  homepage 'https://www.stereotool.com/'

  app 'ThimeoStereoTool.app'
end
