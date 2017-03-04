cask 'deepanpot-vst' do
  version :latest
  sha256 :no_check

  url 'http://dotec-audio.com/release/DeePanpot/latest/mac/DeePanpotMac.zip'
  name 'DOTEC-AUDIO DeePanpot (VST)'
  homepage 'https://dotec-audio.com/deepanpot.html'

  vst_plugin 'DeePanpot.vst'
end
