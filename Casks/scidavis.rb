cask 'scidavis' do
  version '1.23.4'
  sha256 '957c3ad112bee06a233315853f1920c8ad893a4d883965a407259067d4b90b6c'

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
