cask "microsoft-azure-storage-explorer" do
  version "1.22.1"
  sha256 "e173c9fcdfb71349e655f31391d35b9926ff969a1c0bf6e55160596e194da120"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
