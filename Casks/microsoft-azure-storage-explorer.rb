cask "microsoft-azure-storage-explorer" do
  version "1.19.0"
  sha256 "eee5249a445922acbe729d675daf198de249ae73ff3fe0b68cd2c187692d8fdd"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/StorageExplorer_signed.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
