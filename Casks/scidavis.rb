cask 'scidavis' do
  version '1.23.2'
  sha256 '5549e1f400a4d36df3d1f3750f4b66820409ccad1c748f700dac0299f55f7f82'

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
