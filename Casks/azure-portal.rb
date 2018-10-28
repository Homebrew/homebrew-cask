cask 'azure-portal' do
  version :latest
  sha256 :no_check

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/gfilicetti/AzurePortal/raw/master/Microsoft%20Azure-darwin-x64.zip'
  name 'Azure Portal'
  homepage 'https://portal.azure.com/'

  app 'Microsoft Azure-darwin-x64/Microsoft Azure.app'
end
