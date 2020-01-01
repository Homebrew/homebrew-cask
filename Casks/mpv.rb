cask 'mpv' do
  version '0.31.0'
  sha256 '24a8a41ade88b6830218a14b813247bb147637f6ce6a0cbf382259333a69bcd1'

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
