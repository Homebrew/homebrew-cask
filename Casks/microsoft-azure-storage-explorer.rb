cask 'microsoft-azure-storage-explorer' do
  version :latest
  sha256 :no_check

  # microsoft.com was verified as official when first introduced to the cask
  url 'https://go.microsoft.com/fwlink/?LinkId=708342'
  name 'Microsoft Azure Storage Explorer'
  homepage 'http://storageexplorer.com/'

  app 'Microsoft Azure Storage Explorer.app'
end
