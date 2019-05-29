cask 'burn' do
  version '2.5.1'
  sha256 '496b460f09177580c5a3400448c0e399954105147baf1e6fff3fa14dc58031f7'

  # downloads.sourceforge.net/burn-osx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn#{version.no_dots}-64bit.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn'
  name 'Burn'
  homepage 'https://burn-osx.sourceforge.io/'

  app 'Burn.localized/Burn.app'
end
