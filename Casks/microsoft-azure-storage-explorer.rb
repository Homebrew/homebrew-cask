cask 'microsoft-azure-storage-explorer' do
  version :latest
  sha256 :no_check

  url 'http://download.microsoft.com/download/A/E/3/AE32C485-B62B-4437-92F7-8B6B2C48CB40/StorageExplorer_signed.zip'
  name 'Microsoft Azure Storage Explorer'
  homepage 'https://azure.microsoft.com/en-us/features/storage-explorer/'

  pkg 'MicrosoftAzureStorageExplorer/Microsoft Azure Storage Explorer.pkg'

  uninstall pkgutil: 'com.microsoft.StorageExplorer.*'
end
