cask 'stereo-tool' do
  version '8.54'
  sha256 'e2fa88bdaa32517adb8b515ff30f6e00fbfb9b09dfce9e69665c9d5ec9f53d57'

  url 'http://www.stereotool.com/download/stereo_tool.zip'
  appcast 'https://www.stereotool.com/documentation/8.50/version_history/',
          checkpoint: '0f9934dee6dd8cb0cdad1954156d743750b5b4000f0f2a67065d9fe87a10e0a8'
  name 'Stereo Tool'
  homepage 'https://www.stereotool.com/'

  app 'stereo_tool.app'
end
