cask 'mkvtoolnix' do
  version '38.0.0'
  sha256 '2e0192cfc6b090a9c39f0fd3cd45f8523141ecff957a0f71fd2b308291dc6333'

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
