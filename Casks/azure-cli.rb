cask :v1 => 'azure-cli' do
  version '0.9.9'
  sha256 '82cc0eec6f33e8c7dee457155112c7ba82559bae16494cf4f92fd2730851562f'

  # vo.msecnd.net is the official download host per the vendor homepage
  url "http://az412849.vo.msecnd.net/downloads04/azure-cli.#{version}.dmg"
  name 'Microsoft Azure CLI'
  homepage 'https://azure.microsoft.com/en-us/documentation/articles/xplat-cli/'
  license :gratis
  tags :vendor => 'Microsoft'

  pkg 'Install Command Line Interface.pkg'

  uninstall :script => '/usr/local/bin/azure-uninstall',
            :pkgutil => 'com.microsoft.azure.*'
end
