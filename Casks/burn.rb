cask 'burn' do
  version '2.7.9'
  sha256 '5b0c2a5a8676475b43048149d92dc3496b83ff3ec4f9a585f5112afe267f2ad7'

  # downloads.sourceforge.net/burn-osx/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn'
  name 'Burn'
  homepage 'https://burn-osx.sourceforge.io/'

  app 'Burn.localized/Burn.app'
end
