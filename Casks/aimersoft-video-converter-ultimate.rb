cask 'aimersoft-video-converter-ultimate' do
  version '11.1.1.1,747'
  sha256 'dc41ed77052816f83a0689807781a5b2085483bf93f87b9450a0aae39d45b1f1'

  url "http://download.aimersoft.com/cbs_down/aimer-mac-video-converter-ultimate_full#{version.after_comma}.dmg"
  name 'Aimersoft Video Converter Ultimate'
  homepage 'https://www.aimersoft.com/mac-video-converter-ultimate.html'

  app 'Aimersoft Video Converter Ultimate.app'
end
