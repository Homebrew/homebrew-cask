cask 'deespeaker-au' do
  version :latest
  sha256 :no_check

  url 'http://dotec-audio.com/release/DeeSpeaker/latest/au/DeeSpeakerAU.zip'
  name 'DOTEC-AUDIO DeeSpeaker (AU)'
  homepage 'http://dotec-audio.com/deespeaker.html'

  audio_unit_plugin 'DeeSpeaker.component'
end
