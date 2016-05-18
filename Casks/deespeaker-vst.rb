cask 'deespeaker-vst' do
  version :latest
  sha256 :no_check

  url 'http://dotec-audio.com/release/DeeSpeaker/latest/mac/DeeSpeakerMac.zip'
  name 'DOTEC-AUDIO DeeSpeaker (VST)'
  homepage 'http://dotec-audio.com/deespeaker.html'
  license :gratis

  vst_plugin 'DeeSpeaker.vst'
end
