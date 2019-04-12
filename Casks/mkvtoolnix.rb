cask 'mkvtoolnix' do
  version '33.0.0'
  sha256 'f350a70d06ce26c98e26c16bbb253d1eead420c4ccd72ef0d3f5955402363740'

  url "https://mkvtoolnix.download/macos/MKVToolNix-#{version}.dmg"
  appcast 'https://www.bunkus.org/blog/feed/'
  name 'MKVToolNix'
  homepage 'https://mkvtoolnix.download/'

  conflicts_with formula: 'mkvtoolnix'

  app "MKVToolNix-#{version}.app"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvextract"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvinfo"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvmerge"
  binary "#{appdir}/MKVToolNix-#{version}.app/Contents/MacOS/mkvpropedit"
end
