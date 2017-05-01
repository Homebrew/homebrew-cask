cask 'fugio' do
  version '2.10.0'
  sha256 '9a5dc40440797c3048d8de55445430ee22ac4384e20d967feddb17225fa5f09c'

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
