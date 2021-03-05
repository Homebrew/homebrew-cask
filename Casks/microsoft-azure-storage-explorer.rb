cask "microsoft-azure-storage-explorer" do
  version "1.18.0"
  sha256 "a975d5a26b31696b1c5992c10987a34e52810da6e24fdc66df95dc51ab1bf27b"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/MaC_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  appcast "https://github.com/microsoft/AzureStorageExplorer/releases.atom"
  name "Microsoft Azure Storage Explorer"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
