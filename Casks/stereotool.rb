cask 'stereotool' do
  version :latest
  sha256 :no_check

  url "http://www.stereotool.com/download/stereo_tool.zip"
  name 'StereoTool'
  homepage 'https://www.stereotool.com/'

  app 'stereo_tool.app'
end
