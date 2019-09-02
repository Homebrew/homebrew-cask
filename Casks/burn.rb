cask 'burn' do
  version '2.7.4'
  sha256 '2ca810a9f64907c3f131a661ef9bebb7757ad503b6c8d9084c1564787050e315'

  # downloads.sourceforge.net/burn-osx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn'
  name 'Burn'
  homepage 'https://burn-osx.sourceforge.io/'

  app 'Burn.localized/Burn.app'
end
