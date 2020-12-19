cask "microsoft-azure-storage-explorer" do
  version "1.17.0"
  sha256 "b9152e7af0472614a52ab0d884b5c1abf41c1b2dbbbfcf54572b03da9e2682aa"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/MaC_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  appcast "https://github.com/microsoft/AzureStorageExplorer/releases.atom"
  name "Microsoft Azure Storage Explorer"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
