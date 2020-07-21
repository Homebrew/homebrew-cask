cask 'microsoft-azure-storage-explorer' do
  version '1.14.2'
  sha256 '8198ec4314c94945df06f9335e805f8322bac78532dcf58a5f86bdd0b605c3d6'

  # github.com/microsoft/AzureStorageExplorer/ was verified as official when first introduced to the cask
  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/MaC_StorageExplorer.zip"
  appcast 'https://github.com/microsoft/AzureStorageExplorer/releases.atom'
  name 'Microsoft Azure Storage Explorer'
  homepage 'https://azure.microsoft.com/en-us/features/storage-explorer/'

  app 'Microsoft Azure Storage Explorer.app'
end
