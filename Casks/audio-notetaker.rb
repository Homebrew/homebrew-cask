cask :v1 => 'audio-notetaker' do
  version :latest
  sha256 :no_check

  url 'http://link.sonocent.com/AudioNotetaker/Mac/Download'
  homepage 'http://www.sonocent.com/en/the_software/audio_notetaker'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Audio Notetaker.app'
end
