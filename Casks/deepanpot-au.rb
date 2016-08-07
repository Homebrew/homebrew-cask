cask 'deepanpot-au' do
  version :latest
  sha256 :no_check

  url 'http://dotec-audio.com/release/DeePanpot/latest/au/DeePanpotAU.zip'
  name 'DOTEC-AUDIO DeePanpot (AU)'
  homepage 'http://dotec-audio.com/deepanpot.html'
  license :gratis

  audio_unit_plugin 'DeePanpot.component'
end
