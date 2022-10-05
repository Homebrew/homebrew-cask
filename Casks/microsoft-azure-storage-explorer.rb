cask "microsoft-azure-storage-explorer" do
  version "1.26.0"
  sha256 "cb06639e2c9abd6135cdd0ad439fb8bb40a58a61bf9f22a6ee1ef1246c55b8ec"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
