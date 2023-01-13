cask "microsoft-azure-storage-explorer" do
  version "1.27.1"
  sha256 "a45b472184064ac859ecd4235d4dfd424cd5dd4f3350d954be6cbe749e4a687b"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
