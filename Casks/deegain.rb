cask 'deegain' do
  version '1.1.0'
  sha256 '3ad7fd274120a694cf7ab99f266c7a29e9e2476c9d46e433067c3079169d9dc5'

  url "https://dotec-audio.com/release/DeeGain/DeeGainMac_#{version}.zip"
  name 'DOTEC-AUDIO DeeGain'
  homepage 'https://dotec-audio.com/deegain.html'

  audio_unit_plugin 'AudioUnit/DeeGain.component'
  vst_plugin 'VST/DeeGain.vst'
end
