cask 'fugio' do
  version '2.8.0'
  sha256 'b1d1ecf538be939aaaf80548bb4e8e15e562a8199bb066997faab35d596ef5fb'

  url "http://www.bigfug.com/releases/Fugio-#{version}-Cask.zip"
  name 'Fugio'
  homepage 'http://www.bigfug.com/software/fugio/'

  depends_on macos: '>= 10.9'
  depends_on formula: %w[
                        ffmpeg
                        fftw
                        glew
                        lua
                        portaudio
                        portmidi
                        snappy
                        homebrew/science/opencv3
                      ]

  suite 'Fugio'
end
