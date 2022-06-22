cask "microsoft-azure-storage-explorer" do
  version "1.24.3"
  sha256 "9fe3801fd3f0ba52c18b6beb9eebe74c026112312ec223ad6b9e948addaab96f"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
