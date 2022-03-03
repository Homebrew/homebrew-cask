cask "microsoft-azure-storage-explorer" do
  version "1.23.0"
  sha256 "571f7979db73ed36146a96be8e611647d272b4c0a0da3197b5be03e4d7b35f95"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
