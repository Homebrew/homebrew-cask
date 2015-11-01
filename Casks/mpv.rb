cask :v1 => 'mpv' do
  version '0.12.0'
  sha256 '3f78b1cab4f53d6098c4cfb614ac0cf211700c52b0d02e0d378151c534824f1f'

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
