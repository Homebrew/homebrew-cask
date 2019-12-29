cask 'mpv' do
  version '0.31.0'
  sha256 'eacdd24d48fecc6ee133495d3ee62f351b656ef18cf5c6728b6c7cd52e713641'

  # laboratory.stolendata.net/~djinn/mpv_osx was verified as official when first introduced to the cask
  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz"
  appcast 'https://laboratory.stolendata.net/~djinn/mpv_osx/'
  name 'mpv'
  homepage 'https://mpv.io/'

  depends_on macos: '>= :yosemite'

  app 'mpv.app'
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"
  manpage 'documentation/man/mpv.1'

  zap trash: [
               '~/.config/mpv',
               '~/Library/Logs/mpv.log',
               '~/Library/Preferences/io.mpv.plist',
               '~/Library/Preferences/mpv.plist',
             ]
end
