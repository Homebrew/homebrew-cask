cask 'scidavis' do
  version '1.23'
  sha256 'ab2c7fa6dba4304ecb250aa94f27725b55f5d3ec413c86d4fb043c3a22f41c0d'

  url "https://downloads.sourceforge.net/scidavis/scidavis-#{version}.pkg"
  appcast 'https://sourceforge.net/projects/scidavis/rss.xml'
  name 'scidavis'
  homepage 'http://scidavis.sourceforge.net/'

  depends_on macos: '>= :yosemite'

  pkg "scidavis-#{version}.pkg"

  uninstall pkgutil: 'SciDAVis'

  zap trash: '~/Library/Saved Application State/net.sourceforge.scidavis.savedState'
end
