class Mpv < Cask
  url 'https://github.com/mpv-player/mpv/releases/download/v0.3.4/mpv_v0.3.4_osx.zip'
  homepage 'http://mpv.io/'
  version '0.3.4'
  sha1 'a22e671ed7cf0ff756c283ab3dbbe9c364212597'
  link 'mpv.app'
  binary 'mpv.app/Contents/MacOS/mpv'
end
