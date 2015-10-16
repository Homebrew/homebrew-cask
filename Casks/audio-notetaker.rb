cask :v1 => 'audio-notetaker' do
  version :latest
  sha256 :no_check

  url 'http://link.sonocent.com/AudioNotetaker/Mac/Download'
  name 'Audio Notetaker'
  homepage 'http://www.sonocent.com/en/the_software/audio_notetaker'
  license :commercial

  app 'Audio Notetaker.app'
end
