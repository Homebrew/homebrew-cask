cask "microsoft-azure-storage-explorer" do
  version "1.26.1"
  sha256 "c2e456d7c781372ab9e4c5cb427e2bb8b7dd248abb5b4771b7963e69d6a52944"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
