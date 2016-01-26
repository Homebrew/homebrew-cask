cask 'gpodder' do
  version '3.8.3_0'
  sha256 '57fe1f006a691487452f80d924fa60fbadd865dbfb4cde2000aaf46db76d3065'

  # sourceforge.net is the official download host per the vendor homepage
  url "https://downloads.sourceforge.net/sourceforge/gpodder/gPodder-#{version}.zip"
  name 'gPodder'
  homepage 'http://gpodder.org/'
  license :gpl

  depends_on x11: true

  app 'gPodder.app'
end
