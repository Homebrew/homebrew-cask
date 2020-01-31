cask 'mpv' do
  if MacOS.version <= :mavericks
    version '0.29.0'
    sha256 '41f79cc33758888ed75d2163cb1c209d79e6fa7d558b6e8fef3dfe05b4a6fc29'
    # laboratory.stolendata.net/~djinn/mpv_osx was verified as official when first introduced to the cask
    url "https://laboratory.stolendata.net/~djinn/mpv_osx/mpv-#{version}-mavericks.tar.gz"
  else
    version '0.32.0'
    sha256 '5c1b21412a0cfa8fbd06b18aa3cea919c1b9ce86d3aa39672cbc714cb753004c'
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
