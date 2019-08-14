cask 'mkvtoolnix' do
  version '36.0.0'
  sha256 'f13112bca86713ac68d6a937b2421e50005a63d7e6aa43b151ab3bc0e7c6192e'

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
