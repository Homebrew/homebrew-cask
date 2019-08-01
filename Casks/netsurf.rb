cask 'netsurf' do
  version '2.9'
  sha256 '7c005b7a2519a2c096d6a4a044ebc53788d205e1499f4bd2ea4cefe129c1674b'

  url "https://download.netsurf-browser.org/netsurf/releases/pre-built/macosx/NetSurf-#{version}.dmg"
  appcast 'https://www.netsurf-browser.org/downloads/macosx/'
  name 'NetSurf'
  homepage 'https://www.netsurf-browser.org/'

  app 'NetSurf.app'
end
