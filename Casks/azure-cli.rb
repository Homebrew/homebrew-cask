cask :v1 => 'azure-cli' do
  version '0.9.10'
  sha256 '4e219aad00040520e780fba42d9b715761dc0d3ee590a8c8bc7a83119cb3b79b'

  # azuresdkscu.blob.core.windows.net is the official download host per the vendor homepage
  url "https://azuresdkscu.blob.core.windows.net/downloads04/azure-cli.#{version}.dmg"
  name 'Microsoft Azure CLI'
  homepage 'https://azure.microsoft.com/en-us/documentation/articles/xplat-cli/'
  license :apache
  tags :vendor => 'Microsoft'

  pkg 'Install Command Line Interface.pkg'

  uninstall :script => '/usr/local/bin/azure-uninstall'

  zap :delete => '~/.azure'
end
