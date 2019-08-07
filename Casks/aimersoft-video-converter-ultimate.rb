cask 'aimersoft-video-converter-ultimate' do
  version '11.1.0.2,747'
  sha256 'c46d519054c1b51996ccfe398f3acd2e79682264b25ca1ec2b82e4a9827a05ab'

  url "http://download.aimersoft.com/cbs_down/aimer-mac-video-converter-ultimate_full#{version.after_comma}.dmg"
  name 'Aimersoft Video Converter Ultimate'
  homepage 'https://www.aimersoft.com/mac-video-converter-ultimate.html'

  app 'Aimersoft Video Converter Ultimate.app'
end
