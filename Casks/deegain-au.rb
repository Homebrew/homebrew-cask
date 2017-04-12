cask 'deegain-au' do
  version '1.0.5'
  sha256 '57e60cb7f0baf3e52622edfd8a61997aac7256a63b7d16f65700649206b2c437'

  url "https://dotec-audio.com/release/DeeGain/DeeGainMac_#{version}.zip"
  name 'DOTEC-AUDIO DeeGain (AU)'
  homepage 'https://dotec-audio.com/deegain.html'

  audio_unit_plugin 'DeeGain.component'
end
