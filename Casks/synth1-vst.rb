cask 'synth1-vst' do
  version '1.13beta8'
  sha256 '6b172b9433358bce21f0af75a28505c3365d934fadee04a738336e7f5f601675'

  url "http://www.geocities.jp/daichi1969/softsynth/Synth1macvst#{version.no_dots}.zip"
  name 'Synth1 (VST)'
  homepage 'http://www.geocities.jp/daichi1969/softsynth/'

  vst_plugin 'Synth1.vst'
end
