cask 'azure-cli' do
  version '0.9.14'
  sha256 'c497548622661609192dfd4a60da4991b754461a13fb7a7a4e215f50e52fdf11'

  # azuresdkscu.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://azuresdkscu.blob.core.windows.net/downloads04/azure-cli.#{version}.dmg"
  name 'Microsoft Azure CLI'
  homepage 'https://azure.microsoft.com/en-us/documentation/articles/xplat-cli/'
  license :apache

  pkg 'Install Command Line Interface.pkg'

  uninstall script: '/usr/local/bin/azure-uninstall'

  zap delete: '~/.azure'
end
