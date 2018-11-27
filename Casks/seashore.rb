cask 'seashore' do
  version '0.6.5'
  sha256 'c283e9225a6d0740812029772a55f0033db4e19f5ee0e81735114c9cf1017dee'

  # downloads.sourceforge.net/seashore was verified as official when first introduced to the cask
  url 'https://github.com/robaho/seashore/releases/download/v0.6.5/seashore-bin-0.6.5.dmg'
  appcast 'https://github.com/robaho/seashore/releases'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
