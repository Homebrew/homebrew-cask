cask 'synth1-au' do
  version '1.13beta8'
  sha256 '78660848d78c19cdda2597bd050a2ec95fa915cc1a1ab598bde0192a1cbc9a6f'

  url "http://www.geocities.jp/daichi1969/softsynth/Synth1macau#{version.no_dots}.zip"
  name 'Synth1 (AU)'
  homepage 'http://www.geocities.jp/daichi1969/softsynth/'

  audio_unit_plugin 'Synth1.component'
end
