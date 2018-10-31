cask 'stereo-tool' do
  version '9.11'
  sha256 '707e4466f97db8b3a39ac39d80c3bb6cb40782e0f7e241c19027fdbdb28e95da'

  url 'https://www.stereotool.com/download/stereo_tool.zip'
  appcast 'https://www.stereotool.com/documentation/8.50/version_history/'
  name 'Stereo Tool'
  homepage 'https://www.stereotool.com/'

  app 'stereo_tool.app'
end
