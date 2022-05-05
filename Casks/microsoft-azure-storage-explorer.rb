cask "microsoft-azure-storage-explorer" do
  version "1.23.1"
  sha256 "d09d23ff2679ee29ed8b24df5e5c89d17c4b870ccbdb015e0ca33e7af2d2a5fd"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
