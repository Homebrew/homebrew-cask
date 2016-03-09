cask 'mpv' do
  version '0.14.0'
  sha256 '1ab1e2dafd117041e0d1d766285d8ee76bdc6d4c151ef9fb11d3ec0652762eb6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mpv-player/mpv/releases/download/v#{version}/mpv_#{version}_mac.tar.bz2"
  appcast 'https://github.com/mpv-player/mpv/releases.atom',
          checkpoint: 'e77b889c1619cabd01a6fc7b9046c6c238a0e73e5089f474c92bfe880f97fd16'
  name 'mpv'
  homepage 'https://mpv.io/'
  license :gpl

  app 'mpv.app'
  binary 'mpv.app/Contents/MacOS/mpv'

  # Symlink fonts.conf to user dir so mpv doesn't show errors while used as CLI app.
  # Original discussion: https://github.com/mpv-player/mpv/issues/1391
  postflight do
    system '/bin/ln', '-nsf', '--', staged_path.join('mpv.app/Contents/Resources/fonts.conf'), File.expand_path('~/.config/mpv/fonts.conf')
  end

  zap delete: [
                '~/.mpv/channels.conf',
                '~/.mpv/config',
                '~/.mpv/input.conf',
                '~/.mpv/fonts.conf',
                '~/.config/mpv/channels.conf',
                '~/.config/mpv/mpv.conf',
                '~/.config/mpv/input.conf',
                '~/.config/mpv/fonts.conf',
              ],
      rmdir:  [
                '~/.mpv',
                '~/.config/mpv',
              ]

  caveats do
    files_in_usr_local
  end
end
