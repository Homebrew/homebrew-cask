cask 'burn' do
  version '2.6.7'
  sha256 'ba40371d2b0e557496ecdc61bfaa6778e6b174c0cab4a5c5baa66fa219d7960c'

  # downloads.sourceforge.net/burn-osx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn#{version.no_dots}.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn'
  name 'Burn'
  homepage 'https://burn-osx.sourceforge.io/'

  app 'Burn.localized/Burn.app'
end
