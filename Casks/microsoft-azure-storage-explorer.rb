cask "microsoft-azure-storage-explorer" do
  version "1.24.1"
  sha256 "8a1ba950d87ee3d05b238cf11ef0021886054fbf7c4f00a599930b6293184db5"

  url "https://github.com/microsoft/AzureStorageExplorer/releases/download/v#{version}/Mac_StorageExplorer.zip",
      verified: "github.com/microsoft/AzureStorageExplorer/"
  name "Microsoft Azure Storage Explorer"
  desc "Explorer for Azure Storage"
  homepage "https://azure.microsoft.com/en-us/features/storage-explorer/"

  app "Microsoft Azure Storage Explorer.app"
end
