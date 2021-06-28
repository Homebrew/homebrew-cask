cask "microsoft-azure-storage-explorer" do
  version "1.20.0"
  sha256 "034a5a1616d27d1bd3bdfa8f1f0e256a5d0b88d687dffe1ae02fbb8c36d4a4c2"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/V#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
