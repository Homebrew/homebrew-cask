cask "microsoft-azure-storage-explorer" do
  version "1.20.1"
  sha256 "bb70a183c70c3ffe0fe2e10dbc9ec7ad5432f6f251a73beaf07f99956ca3f137"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
