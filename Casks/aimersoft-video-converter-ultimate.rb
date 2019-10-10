cask 'aimersoft-video-converter-ultimate' do
  version '11.5.0.6,747'
  sha256 '993af05a983f0d86a754884d8273905fe8abcf5b425928a44d8302901b17cd0a'

  url "http://download.aimersoft.com/cbs_down/aimer-mac-video-converter-ultimate_full#{version.after_comma}.dmg"
  name 'Aimersoft Video Converter Ultimate'
  homepage 'https://www.aimersoft.com/mac-video-converter-ultimate.html'

  app 'Aimersoft Video Converter Ultimate.app'
end
