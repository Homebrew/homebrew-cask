cask "microsoft-azure-storage-explorer" do
  version "1.18.1"
  sha256 "53e9c9ef1266d03460321e0e49bb75e2e74878300308145cff5abc3e4f764ae2"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/MaC_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  appcast "https://github.com/microsoft/AzureStorageExplorer/releases.atom"
  name "Microsoft Azure Storage Explorer"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
