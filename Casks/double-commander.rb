cask 'double-commander' do
  version '0.8.4-8272'
  sha256 'fad2a1e184ca63635fe8ded675d0a9fbbc6cd70576bc921afcd3e975241f1623'

  # downloads.sourceforge.net/doublecmd was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/doublecmd/doublecmd-#{version}.qt.x86_64.dmg"
  appcast 'https://sourceforge.net/projects/doublecmd/rss'
  name 'Double Commander'
  homepage 'https://doublecmd.sourceforge.io/'

  depends_on macos: '>= :snow_leopard'

  app 'Double Commander.app'
end
