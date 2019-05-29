cask 'aimersoft-video-converter-ultimate' do
  version '11.0.1.2,747'
  sha256 '43e9f2a191d8851b86668488fa5cb61ebf7e3c5d8bd472cbf9e58a201994a4ee'

  url "http://download.aimersoft.com/cbs_down/aimer-mac-video-converter-ultimate_full#{version.after_comma}.dmg"
  name 'Aimersoft Video Converter Ultimate'
  homepage 'https://www.aimersoft.com/mac-video-converter-ultimate.html'

  app 'Aimersoft Video Converter Ultimate.app'
end
