cask "microsoft-azure-storage-explorer" do
  version "1.27.0"
  sha256 "5752efc8bc52fd2daf2cf3f4d408b7de7164c7676800d7709de3c2a34ddf5b4f"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
