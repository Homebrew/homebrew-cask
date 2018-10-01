cask 'deegain' do
  version '1.1.0'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dotec-audio.com/release/DeeGain/DeeGainMacA_#{version}.zip"
  name 'DOTEC-AUDIO DeeGain'
  homepage 'https://dotec-audio.com/deegain.html'

  audio_unit_plugin 'AudioUnit/DeeGain.component'
  vst_plugin 'VST/DeeGain.vst'
end
