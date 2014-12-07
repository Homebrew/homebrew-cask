cask :v1 => 'mpv' do
  version '0.7.1'
  sha256 '965a4f74754e88186ad345e34b1f75e7e5fd1e99e1b13ee61a7cf61624e15564'

  url "https://github.com/mpv-player/mpv/releases/download/v#{version}/mpv_#{version}_mac.tar.bz2"
  homepage 'http://mpv.io/'
  license :gpl

  app 'mpv.app'
  binary 'mpv.app/Contents/MacOS/mpv'

  zap :delete => [
                  '~/.mpv/channels.conf',
                  '~/.mpv/config',
                  '~/.mpv/input.conf',
                 ],
      :rmdir  => '~/.mpv'

  caveats do
    files_in_usr_local
  end
end
