cask :v1 => 'audio-notetaker' do
  version :latest
  sha256 :no_check

  url 'http://link.sonocent.com/AudioNotetaker/Mac/Download'
  homepage 'http://www.sonocent.com/en/the_software/audio_notetaker'
  license :unknown    # todo: improve this machine-generated value

  app 'Audio Notetaker.app'
end
