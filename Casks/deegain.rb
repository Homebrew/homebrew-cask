cask 'deegain' do
  version '1.1.0'
  sha256 '7440f83665b04be13e0cb1f3f948a4261011f68db7ca0fd4b1ef7d3ec7795aba'

  url "https://dotec-audio.com/release/DeeGain/DeeGainMacA_#{version}.zip"
  name 'DOTEC-AUDIO DeeGain'
  homepage 'https://dotec-audio.com/deegain.html'

  audio_unit_plugin 'AudioUnit/DeeGain.component'
  vst_plugin 'VST/DeeGain.vst'
end
