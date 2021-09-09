cask "microsoft-azure-storage-explorer" do
  version "1.21.0"
  sha256 "c4469b2ef7b714eb0c7c1d95eda03519e7e805ad0d69bca83a27e45ee82d7c3a"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
