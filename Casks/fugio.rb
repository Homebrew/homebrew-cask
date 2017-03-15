cask 'fugio' do
  version '2.6.0'
  sha256 'ad7d00590a747d31bb35680414c8ff4cd6d39d597e52d677f896cb41bf22e6d7'

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
