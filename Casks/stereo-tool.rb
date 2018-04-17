cask 'stereo-tool' do
  version '8.40'
  sha256 'eb835c3b29461d52ea9bf4721178e3817bb63f7b2bb139fbecc7d9002548b079'

  url 'http://www.stereotool.com/download/stereo_tool.zip'
  appcast 'http://www.stereotool.com/version_history.shtml',
          checkpoint: '65fc8b88b49fb5600e56c379be8b85ec483d8e615ac3222cb0b6819c102988b3'
  name 'Stereo Tool'
  homepage 'https://www.stereotool.com/'

  app 'stereo_tool.app'
end
