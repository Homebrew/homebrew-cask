cask :v1 => 'azure-cli' do
  version '0.9.7'
  sha256 '3f4c5528952505a326e6d18e4e065586cb08eba30d344203f3091d76cde9981f'

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
