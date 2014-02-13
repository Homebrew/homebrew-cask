class Mpv < Cask
  url 'https://github.com/mpv-player/mpv/releases/download/v0.3.5/mpv_v0.3.5_osx.zip'
  homepage 'http://mpv.io/'
  version '0.3.5'
  sha1 '970f2e786f670b73f46e4068ba9f87b755e4150f'
  link 'mpv.app'
  binary 'mpv.app/Contents/MacOS/mpv'
end
