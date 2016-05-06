cask 'deegain-au' do
  version :latest
  sha256 :no_check

  url 'http://dotec-audio.com/release/DeeGain/latest/au/DeeGainAU.zip'
  name 'DOTEC-AUDIO DeeGain (AU)'
  homepage 'http://dotec-audio.com/deegain.html'
  license :gratis

  audio_unit_plugin 'DeeGain.component'
end
