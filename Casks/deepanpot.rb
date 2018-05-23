cask 'deepanpot' do
  version '2.1.1'
  sha256 'f7b52a83ecfeacdfa2c3d2c1ea10d56c9449908aa11b317cb0243bc5168c2a12'

  url "https://dotec-audio.com/release/DeePanpot/DeePanpotMacA_#{version}.zip"
  name 'DOTEC-AUDIO DeePanpot'
  homepage 'https://dotec-audio.com/deepanpot.html'

  depends_on macos: '>= :lion'

  audio_unit_plugin 'AudioUnit/DeePanpot.component'
  vst_plugin 'VST/DeePanpot.vst'
end
