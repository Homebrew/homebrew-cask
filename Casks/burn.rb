cask 'burn' do
  version '2.7.1'
  sha256 'c9496dc32624665c547efdb66ba0ff7b8ab8a12aa76a4265f390487bbd3c4f59'

  # downloads.sourceforge.net/burn-osx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn'
  name 'Burn'
  homepage 'https://burn-osx.sourceforge.io/'

  app 'Burn.localized/Burn.app'
end
