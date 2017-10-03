cask 'microsoft-azure-storage-explorer' do
  version :latest
  sha256 :no_check

  url 'https://go.microsoft.com/fwlink/?LinkId=708342'
  name 'Microsoft Azure Storage Explorer'
  homepage 'https://azure.microsoft.com/en-us/features/storage-explorer/'

  app 'MicrosoftAzureStorageExplorer_signed/Microsoft Azure Storage Explorer.app'
end
