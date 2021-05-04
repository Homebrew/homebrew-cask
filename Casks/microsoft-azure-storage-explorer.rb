cask "microsoft-azure-storage-explorer" do
  version "1.19.1"
  sha256 "f586dde6cf896f58ef60737abfcedd80529a8f51ee2ace175d773ec5234c2db6"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/V#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
