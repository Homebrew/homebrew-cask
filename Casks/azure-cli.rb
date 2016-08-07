cask 'azure-cli' do
  version '0.10.2'
  sha256 '924f95d3adeee1fb199876f0fecba416dd7a9cf819661d2338f4f7e398658fa4'

  # azuresdkscu.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://azuresdkscu.blob.core.windows.net/downloads04/azure-cli.#{version}.dmg"
  name 'Microsoft Azure CLI'
  homepage 'https://azure.microsoft.com/en-us/documentation/articles/xplat-cli/'
  license :apache

  pkg 'Install Command Line Interface.pkg'

  uninstall pkgutil: 'com.microsoft.azure.microsoftAzureSdk.postflight.pkg',
            script:  '/usr/local/bin/azure-uninstall'

  zap delete: '~/.azure'
end
