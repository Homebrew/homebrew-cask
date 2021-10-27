cask "microsoft-azure-storage-explorer" do
  version "1.21.3"
  sha256 "dd225e16af3a5e6c6f72a36250ec7330470d015eb2a3a2fa3396f41f0b604a12"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
