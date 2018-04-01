cask 'deespeaker' do
  version '1.0.5'
  sha256 'a90ee658d0f17032d8534734ff6150505d7d6391a3aacb982cd58051cbb4038e'

  url "https://dotec-audio.com/release/DeeSpeaker/DeeSpeakerMacA_#{version}.zip"
  name 'DOTEC-AUDIO DeeSpeaker'
  homepage 'https://dotec-audio.com/deespeaker.html'

  depends_on macos: '>= :lion'

  audio_unit_plugin 'AudioUnit/DeeSpeaker.component'
  vst_plugin 'VST/DeeSpeaker.vst'
end
