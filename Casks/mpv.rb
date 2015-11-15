cask :v1 => 'mpv' do
  version '0.13.0'
  sha256 '4bf2d02e2ca4ebd546a3b799d99b81e36ed9e5df0afdd8eb89edf4defc3a67aa'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mpv-player/mpv/releases/download/v#{version}/mpv_#{version}_mac.tar.bz2"
  appcast 'https://github.com/mpv-player/mpv/releases.atom'
  name 'mpv'
  homepage 'http://mpv.io/'
  license :gpl

  app 'mpv.app'
  binary 'mpv.app/Contents/MacOS/mpv'

  # Symlink fonts.conf to user dir so mpv doesn't show errors while used as CLI app.
  # Original discussion: https://github.com/mpv-player/mpv/issues/1391
  postflight do
    system '/bin/ln', '-nsf', '--', staged_path.join('mpv.app/Contents/Resources/fonts.conf'), File.expand_path('~/.config/mpv/fonts.conf')
  end

  zap :delete => [
                  '~/.mpv/channels.conf',
                  '~/.mpv/config',
                  '~/.mpv/input.conf',
                  '~/.mpv/fonts.conf',
                  '~/.config/mpv/channels.conf',
                  '~/.config/mpv/mpv.conf',
                  '~/.config/mpv/input.conf',
                  '~/.config/mpv/fonts.conf',
                 ],
      :rmdir  => [
                  '~/.mpv',
                  '~/.config/mpv'
                 ]

  caveats do
    files_in_usr_local
  end
end
