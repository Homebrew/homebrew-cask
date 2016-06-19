cask 'azure-cli' do
  version '0.9.20'
  sha256 '2fdb64650709dae1c4aa0fe1493dc46aed43f45fb0ac88824e24f1203c16fabc'

  # azuresdkscu.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://azuresdkscu.blob.core.windows.net/downloads04/azure-cli.#{version}.dmg"
  name 'Microsoft Azure CLI'
  homepage 'https://azure.microsoft.com/en-us/documentation/articles/xplat-cli/'
  license :apache

  pkg 'Install Command Line Interface.pkg'

  uninstall script: '/usr/local/bin/azure-uninstall'

  zap delete: '~/.azure'
end
