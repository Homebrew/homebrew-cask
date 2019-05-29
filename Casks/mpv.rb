cask 'mpv' do
  version '0.29.1'
  sha256 '45d176bc884dfa84ce5226f53bc0809e2054984837e16a1518061e5493700f21'

  # laboratory.stolendata.net/~djinn/mpv_osx was verified as official when first introduced to the cask
  url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}.tar.gz"
  appcast 'https://laboratory.stolendata.net/~djinn/mpv_osx/'
  name 'mpv'
  homepage 'https://mpv.io/'

  depends_on macos: '>= :yosemite'

  app 'mpv.app'
  binary "#{appdir}/mpv.app/Contents/MacOS/mpv"

  zap trash: [
               '~/.config/mpv',
               '~/Library/Logs/mpv.log',
               '~/Library/Preferences/io.mpv.plist',
               '~/Library/Preferences/mpv.plist',
             ]
end
