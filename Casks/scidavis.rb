cask 'scidavis' do
  version '1.25.1'
  sha256 '5bce640bf16b6df9a0733684db5366c9982aa39a79bb6dc9f6a3e289653b79ff'

  # downloads.sourceforge.net/scidavis was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scidavis/scidavis-#{version}-mac-dist.dmg"
  appcast 'https://sourceforge.net/projects/scidavis/rss.xml'
  name 'scidavis'
  homepage 'https://scidavis.sourceforge.io/'

  depends_on macos: '>= :yosemite'

  app 'scidavis.app'
end
