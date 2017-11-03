cask 'microsoft-azure-storage-explorer' do
  version '0.9.2'
  sha256 'd88fa022f6827571fddc36dc645d6c12c8bdacf04cf9b0b6fd3c7c27b870992c'

  url 'http://download.microsoft.com/download/A/E/3/AE32C485-B62B-4437-92F7-8B6B2C48CB40/StorageExplorer_signed.zip'
  name 'Microsoft Azure Storage Explorer'
  homepage 'https://azure.microsoft.com/en-us/features/storage-explorer/'

  app 'MicrosoftAzureStorageExplorer/Microsoft Azure Storage Explorer.app'
end
