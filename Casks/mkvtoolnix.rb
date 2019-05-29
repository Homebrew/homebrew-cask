cask 'mkvtoolnix' do
  version '34.0.0'
  sha256 '8528a6d56a51919a55ef30e505c717c43579c2fa766efd75940b8dd8169ae0d8'

  url "https://mkvtoolnix.download/macos/MKVToolNix-#{version}.dmg"
  appcast 'https://www.bunkus.org/blog/feed/'
  name 'MKVToolNix'
  homepage 'https://mkvtoolnix.download/'

  conflicts_with formula: 'mkvtoolnix'
  depends_on macos: '>= :sierra'

  app "MKVToolNix-#{version}.app"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvextract"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvinfo"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvmerge"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvpropedit"
end
