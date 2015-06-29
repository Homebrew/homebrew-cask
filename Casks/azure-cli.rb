cask :v1 => 'azure-cli' do
  version :latest
  sha256 :no_check

  url 'http://go.microsoft.com/fwlink/?linkid=252249&clcid=0x409'
  name 'Microsoft Azure SDK'
  homepage 'https://azure.microsoft.com/en-us/documentation/articles/command-line-tools/'
  license :gratis
  tags :vendor => 'Microsoft'

  pkg 'Install Command Line Interface.pkg'

  uninstall :script => '/usr/local/bin/azure-uninstall',
            :pkgutil => 'com.microsoft.azure.*'
end
