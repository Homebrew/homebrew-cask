cask 'deespeaker-au' do
  version :latest
  sha256 :no_check

  url 'https://dotec-audio.com/release/DeeSpeaker/latest/au/DeeSpeakerAU.zip'
  name 'DOTEC-AUDIO DeeSpeaker (AU)'
  homepage 'https://dotec-audio.com/deespeaker.html'

  audio_unit_plugin 'DeeSpeaker.component'
end
