cask 'burn' do
  version '2.7.7'
  sha256 '475d679eaf081726365fdf140d41d04f1c57ff35f7fd5bc80b00912e4eeaef89'

  # downloads.sourceforge.net/burn-osx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn'
  name 'Burn'
  homepage 'https://burn-osx.sourceforge.io/'

  app 'Burn.localized/Burn.app'
end
