class Mpv < Cask
  version '0.3.5'
  sha256 '7502c74aebf0edf9e5fde1bbac1a3f34a5b9df49fec7dac72729153e646ef414'

  url 'https://github.com/mpv-player/mpv/releases/download/v0.3.5/mpv_v0.3.5_osx.zip'
  homepage 'http://mpv.io/'

  link 'mpv.app'
  binary 'mpv.app/Contents/MacOS/mpv'
  caveats do
    files_in_usr_local
  end
end
