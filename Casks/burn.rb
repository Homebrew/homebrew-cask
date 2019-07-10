cask 'burn' do
  version '2.6.4'
  sha256 '0d104e40021224192b1d05d2c98d4126f3a4bbbd472fda2bb603ad5c29aaa2d9'

  # downloads.sourceforge.net/burn-osx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn#{version.no_dots}.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn'
  name 'Burn'
  homepage 'https://burn-osx.sourceforge.io/'

  app 'Burn.localized/Burn.app'
end
