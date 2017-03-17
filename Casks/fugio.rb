cask 'fugio' do
  version '2.7.0'
  sha256 '87bc5e2810e6151cfba543ba77192be26c049454997243f88d7415f6e533ced5'

  url "http://www.bigfug.com/releases/Fugio-#{version}-Cask.zip"
  name 'Fugio'
  homepage 'http://www.bigfug.com/software/fugio'

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
