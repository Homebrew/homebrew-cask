cask :v1 => 'azure-cli' do
  version :latest
  sha256 :no_check

  url 'http://go.microsoft.com/fwlink/?linkid=252249&clcid=0x409'
  name 'Microsoft Azure SDK'
  homepage 'http://azure.microsoft.com/en-us/documentation/articles/command-line-tools/'
  license :gratis    # todo: improve this machine-generated value

  pkg 'Install Command Line Interface.pkg'

  uninstall :script => '/usr/local/bin/azure-uninstall',
  			:pkgutil => 'com.microsoft.azure.*'

end
