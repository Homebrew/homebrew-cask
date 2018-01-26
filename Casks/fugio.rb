cask 'fugio' do
  version '2.11.0'
  sha256 '8fece03314f93618887268b9b257c7c811ef6c952d2cb7cedfb0bca6e76fde0d'

  url "http://www.bigfug.com/releases/Fugio-#{version}-Cask.zip"
  name 'Fugio'
  homepage 'https://www.bigfug.com/software/fugio/'

  depends_on macos: '>= :mavericks'
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
