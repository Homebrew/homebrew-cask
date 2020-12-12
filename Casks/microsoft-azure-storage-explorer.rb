cask "microsoft-azure-storage-explorer" do
  version "1.16.0"
  sha256 "aab893610d0f8eb16abdc00af0c0265ac5f6c06dc9e3c58f235c1b71c70683e2"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/MaC_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  appcast "https://github.com/microsoft/AzureStorageExplorer/releases.atom"
  name "Microsoft Azure Storage Explorer"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
