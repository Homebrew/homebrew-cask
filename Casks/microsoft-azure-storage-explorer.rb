cask "microsoft-azure-storage-explorer" do
  version "1.15.0"
  sha256 "ae8959bde9561346b2920c86ff0797b07a6fedbfd8fd4bfdc261fb3f674f450e"

  # github.com/microsoft/AzureStorageExplorer/ was verified as official when first introduced to the cask
  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/MaC_StorageExplorer.zip"
  appcast "https://github.com/microsoft/AzureStorageExplorer/releases.atom"
  name "Microsoft Azure Storage Explorer"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
