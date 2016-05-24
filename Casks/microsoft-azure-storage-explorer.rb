cask 'microsoft-azure-storage-explorer' do
  version :latest
  sha256 :no_check

  url 'https://go.microsoft.com/fwlink/?LinkId=708342'
  name 'Microsoft Azure Storage Explorer'
  homepage 'http://storageexplorer.com/'
  license :gratis

  app 'Microsoft Azure Storage Explorer.app'
end
