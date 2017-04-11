cask 'deepanpot-au' do
  version '2.0.0'
  sha256 '4a63172f715cd912cbc7f3439855f0878a8579e27c798b89513cc10315e6bb60'

  url "https://dotec-audio.com/release/DeePanpot/DeePanpotMac_#{version}.zip"
  name 'DOTEC-AUDIO DeePanpot (AU)'
  homepage 'https://dotec-audio.com/deepanpot.html'

  audio_unit_plugin 'DeePanpot.component'
end
