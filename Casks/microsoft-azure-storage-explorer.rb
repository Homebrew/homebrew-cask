cask "microsoft-azure-storage-explorer" do
  version "1.21.1"
  sha256 "a8c5c52f3e1f8a37f260c48dce1d55f97a8d2555264576536609a49f8a1b0b25"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
