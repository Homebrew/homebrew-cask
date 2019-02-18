cask 'fugio' do
  version '3.0.1'
  sha256 'b8006adb52853c56074d9bc2dde7c20fde05a910f57b23e19490265ea55f2cd3'

  url "https://www.bigfug.com/releases/Fugio-#{version}-macOS.dmg"
  name 'Fugio'
  homepage 'https://www.bigfug.com/software/fugio/'

  depends_on formula: [
                        'ffmpeg',
                        'fftw',
                        'glew',
                        'lua',
                        'opencv',
                        'portaudio',
                        'portmidi',
                        'snappy',
                      ]

  suite 'Fugio'
end
