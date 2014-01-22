class Mpv < Cask
  url 'https://github.com/mpv-player/mpv/releases/download/v0.3.3/mpv_v0.3.3_osx.zip'
  homepage 'http://mpv.io/'
  version '0.3.3'
  sha1 '6bfe4a8f4d191a1642cedb09ae36437d1709141f'
  link 'mpv.app'
  binary 'mpv.app/Contents/MacOS/mpv'
end
