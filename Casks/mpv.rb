cask :v1 => 'mpv' do
  version '0.5.3'
  sha256 'f0d89bec6265165b84279e200af2ad09e6784ed2966df91ce6d757f3cbe93bb9'

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
