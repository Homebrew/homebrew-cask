cask 'scidavis' do
  version '1.25'
  sha256 '8a554f90c390426dc04d104814fc2a109b68a55cf272ee25f82e419cfebafbf5'

  # downloads.sourceforge.net/scidavis was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scidavis/scidavis-#{version}-mac-dist.dmg"
  appcast 'https://sourceforge.net/projects/scidavis/rss.xml'
  name 'scidavis'
  homepage 'https://scidavis.sourceforge.io/'

  depends_on macos: '>= :yosemite'

  app 'scidavis.app'
end
