cask 'microsoft-azure-storage-explorer' do
  version '1.14.0'
  sha256 '6b23316dd85b5ba9621e747a00e54a073dcbb920b89ae72afa8b9db07915950d'

  # github.com/microsoft/AzureStorageExplorer/ was verified as official when first introduced to the cask
  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip"
  appcast 'https://github.com/microsoft/AzureStorageExplorer/releases.atom'
  name 'Microsoft Azure Storage Explorer'
  homepage 'https://azure.microsoft.com/en-us/features/storage-explorer/'

  app 'Microsoft Azure Storage Explorer.app'
end
