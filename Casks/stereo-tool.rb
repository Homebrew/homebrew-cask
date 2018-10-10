cask 'stereo-tool' do
  version '9.02'
  sha256 '06a469887634b3969d5774f51c1f3598f4772450dfcc9bfb15581d7eafdb4047'

  url 'https://www.stereotool.com/download/stereo_tool.zip'
  appcast 'https://www.stereotool.com/documentation/8.50/version_history/'
  name 'Stereo Tool'
  homepage 'https://www.stereotool.com/'

  app 'stereo_tool.app'
end
