class Mpv < Cask
  version '0.5.1'
  sha256 'b7ccc7d1c5ec1768b09329a24f548f6e00d418793cfaad6c3611561719ad4f03'

  url 'https://github.com/mpv-player/mpv/releases/download/v0.5.1/mpv_0.5.1_mac.tar.bz2'
  homepage 'http://mpv.io/'

  app 'mpv.app'
  binary 'mpv.app/Contents/MacOS/mpv'
  caveats do
    files_in_usr_local
  end
  zap :files => [
                 '~/.mpv/channels.conf',
                 '~/.mpv/config',
                 '~/.mpv/input.conf',
                ]
  # todo :rmdir is not yet supported
  #   :rmdir     '~/.mpv'
end
