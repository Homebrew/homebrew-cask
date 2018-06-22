cask 'deegain' do
  version '1.1.0'
  sha256 '8f8b713a35290009ab6eede4322ac07b5d22c2902a47ee6fd402a0ce9ce014f6'

  url "https://dotec-audio.com/release/DeeGain/DeeGainMacA_#{version}.zip"
  name 'DOTEC-AUDIO DeeGain'
  homepage 'https://dotec-audio.com/deegain.html'

  audio_unit_plugin 'AudioUnit/DeeGain.component'
  vst_plugin 'VST/DeeGain.vst'
end
