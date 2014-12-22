cask :v1 => 'mpv' do
  version '0.7.2'
  sha256 'a73392d6c9cc998442a0dc3323caa90a1ef24258026c18da66fa21921d234f43'

  url "https://github.com/mpv-player/mpv/releases/download/v#{version}/mpv_#{version}_mac.tar.bz2"
  homepage 'http://mpv.io/'
  license :gpl

  app 'mpv.app'
  binary 'mpv.app/Contents/MacOS/mpv'

  zap :delete => [
                  '~/.mpv/channels.conf',
                  '~/.mpv/config',
                  '~/.mpv/input.conf',
                  '~/.config/mpv/mpv.conf',
                 ],
      :rmdir  => '~/.mpv'

  caveats do
    files_in_usr_local
  end
end
