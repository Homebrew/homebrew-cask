cask "microsoft-azure-storage-explorer" do
  version "1.25.1"
  sha256 "76339ca2e99802143d5b914e3f545bcd1ef6dc57e5068099f966eebeee9d8cb8"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
