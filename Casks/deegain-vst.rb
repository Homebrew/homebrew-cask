cask 'deegain-vst' do
  version :latest
  sha256 :no_check

  url 'http://dotec-audio.com/release/DeeGain/latest/mac/DeeGainMac.zip'
  name 'DOTEC-AUDIO DeeGain (VST)'
  homepage 'http://dotec-audio.com/deegain.html'

  vst_plugin 'DeeGain.vst'
end
