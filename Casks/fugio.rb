cask 'fugio' do
  version '2.9.0'
  sha256 '713042b88f8b9e3365c015ded27fa81de81b92e73b80bf6014efbc7b0e070f6f'

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
