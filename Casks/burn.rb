cask 'burn' do
  version '2.7.5'
  sha256 '1a43e171d38262a2e6e53a6e918814b797e098b33ecaed5aa9c6de55a3e3ba0f'

  # downloads.sourceforge.net/burn-osx was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/burn-#{version}.zip"
  appcast 'https://sourceforge.net/projects/burn-osx/rss?path=/Burn'
  name 'Burn'
  homepage 'https://burn-osx.sourceforge.io/'

  app 'Burn.localized/Burn.app'
end
