cask 'burn' do
  version '2.6.1'
  sha256 '08887e71be3448a0226f09f3a950dc9686e0c7c46cd98074fb11f8c72565010a'

  # downloads.sourceforge.net/burn-osx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn#{version.no_dots}.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn'
  name 'Burn'
  homepage 'https://burn-osx.sourceforge.io/'

  app 'Burn.localized/Burn.app'
end
