cask 'scidavis' do
  version '1.23'
  sha256 '5b3925dfdf0b5dcda9d2a9929b5ae8a9f83cb6130389cea2a9248e84e396fdf2'

  # downloads.sourceforge.net/scidavis was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scidavis/scidavis-#{version}.pkg"
  appcast 'https://sourceforge.net/projects/scidavis/rss.xml'
  name 'scidavis'
  homepage 'https://scidavis.sourceforge.io/'

  depends_on macos: '>= :yosemite'

  pkg "scidavis-#{version}.pkg"

  uninstall pkgutil: 'SciDAVis'

  zap trash: '~/Library/Saved Application State/net.sourceforge.scidavis.savedState'
end
