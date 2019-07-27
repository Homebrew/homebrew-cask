cask 'burn' do
  version '2.6.9'
  sha256 'd7b5f118801e58098b1d5cdc5ee0c7995a97ae3e9681773ecda4970eaa472ba7'

  # downloads.sourceforge.net/burn-osx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn'
  name 'Burn'
  homepage 'https://burn-osx.sourceforge.io/'

  app 'Burn.localized/Burn.app'
end
